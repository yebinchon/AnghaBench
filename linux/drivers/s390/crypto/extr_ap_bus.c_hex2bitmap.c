
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int hex_to_bin (char const) ;
 scalar_t__ isxdigit (char const) ;
 int set_bit_inv (int,unsigned long*) ;

__attribute__((used)) static int hex2bitmap(const char *str, unsigned long *bitmap, int bits)
{
 int i, n, b;


 if (bits & 0x07)
  return -EINVAL;

 if (str[0] == '0' && str[1] == 'x')
  str++;
 if (*str == 'x')
  str++;

 for (i = 0; isxdigit(*str) && i < bits; str++) {
  b = hex_to_bin(*str);
  for (n = 0; n < 4; n++)
   if (b & (0x08 >> n))
    set_bit_inv(i + n, bitmap);
  i += 4;
 }

 if (*str == '\n')
  str++;
 if (*str)
  return -EINVAL;
 return 0;
}
