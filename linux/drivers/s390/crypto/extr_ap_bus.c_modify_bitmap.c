
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int clear_bit_inv (int,unsigned long*) ;
 int set_bit_inv (int,unsigned long*) ;
 int simple_strtoul (char const*,char**,int ) ;

__attribute__((used)) static int modify_bitmap(const char *str, unsigned long *bitmap, int bits)
{
 int a, i, z;
 char *np, sign;


 if (bits & 0x07)
  return -EINVAL;

 while (*str) {
  sign = *str++;
  if (sign != '+' && sign != '-')
   return -EINVAL;
  a = z = simple_strtoul(str, &np, 0);
  if (str == np || a >= bits)
   return -EINVAL;
  str = np;
  if (*str == '-') {
   z = simple_strtoul(++str, &np, 0);
   if (str == np || a > z || z >= bits)
    return -EINVAL;
   str = np;
  }
  for (i = a; i <= z; i++)
   if (sign == '+')
    set_bit_inv(i, bitmap);
   else
    clear_bit_inv(i, bitmap);
  while (*str == ',' || *str == '\n')
   str++;
 }

 return 0;
}
