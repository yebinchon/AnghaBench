
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {int dummy; } ;


 int USB3_USB_COM_CON ;
 int USB3_USB_OTG_INT_ENA ;
 int USB3_USB_OTG_INT_STA ;
 int USB_COM_CON_PN_LSTTR_PP ;
 int USB_COM_CON_PN_RDATAIF_NL ;
 int USB_COM_CON_PN_WDATAIF_NL ;
 int USB_OTG_IDMON ;
 int usb3_check_id (struct renesas_usb3*) ;
 int usb3_check_vbus (struct renesas_usb3*) ;
 int usb3_init_axi_bridge (struct renesas_usb3*) ;
 int usb3_init_epc_registers (struct renesas_usb3*) ;
 int usb3_set_bit (struct renesas_usb3*,int,int ) ;
 int usb3_write (struct renesas_usb3*,int ,int ) ;

__attribute__((used)) static void renesas_usb3_init_controller(struct renesas_usb3 *usb3)
{
 usb3_init_axi_bridge(usb3);
 usb3_init_epc_registers(usb3);
 usb3_set_bit(usb3, USB_COM_CON_PN_WDATAIF_NL |
       USB_COM_CON_PN_RDATAIF_NL | USB_COM_CON_PN_LSTTR_PP,
       USB3_USB_COM_CON);
 usb3_write(usb3, USB_OTG_IDMON, USB3_USB_OTG_INT_STA);
 usb3_write(usb3, USB_OTG_IDMON, USB3_USB_OTG_INT_ENA);

 usb3_check_id(usb3);
 usb3_check_vbus(usb3);
}
