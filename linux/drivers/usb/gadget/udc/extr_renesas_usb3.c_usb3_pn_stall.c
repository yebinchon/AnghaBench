
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {int dummy; } ;


 int PN_CON_RES_FORCE_STALL ;
 int usb3_set_pn_con_update_res (struct renesas_usb3*,int ) ;

__attribute__((used)) static void usb3_pn_stall(struct renesas_usb3 *usb3)
{
 usb3_set_pn_con_update_res(usb3, PN_CON_RES_FORCE_STALL);
}
