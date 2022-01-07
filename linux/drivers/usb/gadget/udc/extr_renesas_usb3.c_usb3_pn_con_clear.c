
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {int dummy; } ;


 int PN_CON_CLR ;
 int USB3_PN_CON ;
 int usb3_set_bit (struct renesas_usb3*,int ,int ) ;
 int usb3_wait (struct renesas_usb3*,int ,int ,int ) ;

__attribute__((used)) static int usb3_pn_con_clear(struct renesas_usb3 *usb3)
{
 usb3_set_bit(usb3, PN_CON_CLR, USB3_PN_CON);

 return usb3_wait(usb3, USB3_PN_CON, PN_CON_CLR, 0);
}
