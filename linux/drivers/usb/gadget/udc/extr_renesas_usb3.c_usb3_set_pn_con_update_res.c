
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct renesas_usb3 {int dummy; } ;


 int PN_CON_RES_MASK ;
 int PN_CON_RES_WEN ;
 int USB3_PN_CON ;
 int usb3_read (struct renesas_usb3*,int ) ;
 int usb3_write (struct renesas_usb3*,int,int ) ;

__attribute__((used)) static void usb3_set_pn_con_update_res(struct renesas_usb3 *usb3, u32 res)
{
 u32 val = usb3_read(usb3, USB3_PN_CON);

 val &= ~PN_CON_RES_MASK;
 val |= res & PN_CON_RES_MASK;
 val |= PN_CON_RES_WEN;
 usb3_write(usb3, val, USB3_PN_CON);
}
