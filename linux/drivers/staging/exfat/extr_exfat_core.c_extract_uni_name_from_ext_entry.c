
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ext_dentry_t {scalar_t__ unicode_11_12; scalar_t__ unicode_5_10; scalar_t__ unicode_0_4; } ;
typedef int s32 ;


 int GET16 (scalar_t__) ;
 int GET16_A (scalar_t__) ;

s32 extract_uni_name_from_ext_entry(struct ext_dentry_t *ep, u16 *uniname,
        s32 order)
{
 int i, len = 0;

 for (i = 0; i < 10; i += 2) {
  *uniname = GET16(ep->unicode_0_4 + i);
  if (*uniname == 0x0)
   return len;
  uniname++;
  len++;
 }

 if (order < 20) {
  for (i = 0; i < 12; i += 2) {
   *uniname = GET16_A(ep->unicode_5_10 + i);
   if (*uniname == 0x0)
    return len;
   uniname++;
   len++;
  }
 } else {
  for (i = 0; i < 8; i += 2) {
   *uniname = GET16_A(ep->unicode_5_10 + i);
   if (*uniname == 0x0)
    return len;
   uniname++;
   len++;
  }
  *uniname = 0x0;
  return len;
 }

 for (i = 0; i < 4; i += 2) {
  *uniname = GET16_A(ep->unicode_11_12 + i);
  if (*uniname == 0x0)
   return len;
  uniname++;
  len++;
 }

 *uniname = 0x0;
 return len;
}
