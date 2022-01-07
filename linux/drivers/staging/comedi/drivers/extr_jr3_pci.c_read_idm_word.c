
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int hex_to_bin (int const) ;
 int isxdigit (int const) ;

__attribute__((used)) static int read_idm_word(const u8 *data, size_t size, int *pos,
    unsigned int *val)
{
 int result = 0;
 int value;

 if (pos && val) {

  for (; *pos < size && !isxdigit(data[*pos]); (*pos)++)
   ;

  *val = 0;
  for (; *pos < size; (*pos)++) {
   value = hex_to_bin(data[*pos]);
   if (value >= 0) {
    result = 1;
    *val = (*val << 4) + value;
   } else {
    break;
   }
  }
 }
 return result;
}
