
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct name_dentry_t {int flags; scalar_t__ unicode_0_14; } ;
struct dentry_t {int dummy; } ;


 int SET16_A (scalar_t__,int) ;
 int TYPE_EXTEND ;
 int exfat_set_entry_type (struct dentry_t*,int ) ;

void init_name_entry(struct name_dentry_t *ep, u16 *uniname)
{
 int i;

 exfat_set_entry_type((struct dentry_t *)ep, TYPE_EXTEND);
 ep->flags = 0x0;

 for (i = 0; i < 30; i++, i++) {
  SET16_A(ep->unicode_0_14 + i, *uniname);
  if (*uniname == 0x0)
   break;
  uniname++;
 }
}
