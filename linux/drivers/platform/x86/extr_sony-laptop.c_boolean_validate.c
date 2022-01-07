
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int const SNC_VALIDATE_IN ;

__attribute__((used)) static int boolean_validate(const int direction, const int value)
{
 if (direction == SNC_VALIDATE_IN) {
  if (value != 0 && value != 1)
   return -EINVAL;
 }
 return value;
}
