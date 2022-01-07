
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {int dummy; } ;


 int P0_CON_BCLR ;
 int USB3_P0_CON ;
 int usb3_set_bit (struct renesas_usb3*,int ,int ) ;
 int usb3_wait (struct renesas_usb3*,int ,int ,int ) ;

__attribute__((used)) static int usb3_p0_con_clear_buffer(struct renesas_usb3 *usb3)
{
 usb3_set_bit(usb3, P0_CON_BCLR, USB3_P0_CON);

 return usb3_wait(usb3, USB3_P0_CON, P0_CON_BCLR, 0);
}
