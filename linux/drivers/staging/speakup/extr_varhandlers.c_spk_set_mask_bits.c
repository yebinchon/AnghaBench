
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {short mask; int* value; } ;


 short B_NUM ;
 int EINVAL ;
 short PUNC ;
 int SPACE ;
 short* spk_chartab ;
 TYPE_1__* spk_punc_info ;

int spk_set_mask_bits(const char *input, const int which, const int how)
{
 u_char *cp;
 short mask = spk_punc_info[which].mask;

 if (how & 1) {
  for (cp = (u_char *)spk_punc_info[3].value; *cp; cp++)
   spk_chartab[*cp] &= ~mask;
 }
 cp = (u_char *)input;
 if (!cp) {
  cp = spk_punc_info[which].value;
 } else {
  for (; *cp; cp++) {
   if (*cp < SPACE)
    break;
   if (mask < PUNC) {
    if (!(spk_chartab[*cp] & PUNC))
     break;
   } else if (spk_chartab[*cp] & B_NUM) {
    break;
   }
  }
  if (*cp)
   return -EINVAL;
  cp = (u_char *)input;
 }
 if (how & 2) {
  for (; *cp; cp++)
   if (*cp > SPACE)
    spk_chartab[*cp] |= mask;
 } else {
  for (; *cp; cp++)
   if (*cp > SPACE)
    spk_chartab[*cp] &= ~mask;
 }
 return 0;
}
