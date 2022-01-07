
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct name_dentry_t {scalar_t__ unicode_0_14; } ;
typedef int s32 ;


 int GET16_A (scalar_t__) ;

s32 extract_uni_name_from_name_entry(struct name_dentry_t *ep, u16 *uniname,
         s32 order)
{
 int i, len = 0;

 for (i = 0; i < 30; i += 2) {
  *uniname = GET16_A(ep->unicode_0_14 + i);
  if (*uniname == 0x0)
   return len;
  uniname++;
  len++;
 }

 *uniname = 0x0;
 return len;
}
