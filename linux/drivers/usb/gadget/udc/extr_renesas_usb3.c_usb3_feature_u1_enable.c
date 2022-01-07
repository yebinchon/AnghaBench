
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct renesas_usb3 {int dummy; } ;


 int SSIFCMD_UDIR_U1 ;
 int SSIFCMD_UREQ_U1 ;
 int USB3_SSIFCMD ;
 int usb3_clear_bit (struct renesas_usb3*,int,int ) ;
 int usb3_set_bit (struct renesas_usb3*,int,int ) ;

__attribute__((used)) static void usb3_feature_u1_enable(struct renesas_usb3 *usb3, bool enable)
{
 u32 bits = SSIFCMD_UDIR_U1 | SSIFCMD_UREQ_U1;


 if (enable)
  usb3_clear_bit(usb3, bits, USB3_SSIFCMD);
 else
  usb3_set_bit(usb3, bits, USB3_SSIFCMD);
}
