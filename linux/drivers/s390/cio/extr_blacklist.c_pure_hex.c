
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hex_to_bin (char) ;

__attribute__((used)) static int pure_hex(char **cp, unsigned int *val, int min_digit,
      int max_digit, int max_val)
{
 int diff;

 diff = 0;
 *val = 0;

 while (diff <= max_digit) {
  int value = hex_to_bin(**cp);

  if (value < 0)
   break;
  *val = *val * 16 + value;
  (*cp)++;
  diff++;
 }

 if ((diff < min_digit) || (diff > max_digit) || (*val > max_val))
  return 1;

 return 0;
}
