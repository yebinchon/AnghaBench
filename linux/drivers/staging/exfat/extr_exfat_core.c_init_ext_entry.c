
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u16 ;
struct ext_dentry_t {scalar_t__ unicode_11_12; scalar_t__ unicode_5_10; scalar_t__ unicode_0_4; scalar_t__ start_clu; void* checksum; scalar_t__ sysid; void* order; } ;
struct dentry_t {int dummy; } ;
typedef scalar_t__ s32 ;


 int SET16 (scalar_t__,int) ;
 int SET16_A (scalar_t__,int) ;
 int TYPE_EXTEND ;
 int fat_set_entry_type (struct dentry_t*,int ) ;

void init_ext_entry(struct ext_dentry_t *ep, s32 order, u8 chksum, u16 *uniname)
{
 int i;
 bool end = 0;

 fat_set_entry_type((struct dentry_t *)ep, TYPE_EXTEND);
 ep->order = (u8)order;
 ep->sysid = 0;
 ep->checksum = chksum;
 SET16_A(ep->start_clu, 0);

 for (i = 0; i < 10; i += 2) {
  if (!end) {
   SET16(ep->unicode_0_4 + i, *uniname);
   if (*uniname == 0x0)
    end = 1;
   else
    uniname++;
  } else {
   SET16(ep->unicode_0_4 + i, 0xFFFF);
  }
 }

 for (i = 0; i < 12; i += 2) {
  if (!end) {
   SET16_A(ep->unicode_5_10 + i, *uniname);
   if (*uniname == 0x0)
    end = 1;
   else
    uniname++;
  } else {
   SET16_A(ep->unicode_5_10 + i, 0xFFFF);
  }
 }

 for (i = 0; i < 4; i += 2) {
  if (!end) {
   SET16_A(ep->unicode_11_12 + i, *uniname);
   if (*uniname == 0x0)
    end = 1;
   else
    uniname++;
  } else {
   SET16_A(ep->unicode_11_12 + i, 0xFFFF);
  }
 }
}
