-- Drop the current overly permissive INSERT policy
DROP POLICY IF EXISTS "Anyone can create appointments" ON public.appointments;

-- Create a new INSERT policy that requires authentication
CREATE POLICY "Authenticated users can create appointments" 
ON public.appointments 
FOR INSERT 
TO authenticated
WITH CHECK (true);