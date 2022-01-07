
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {int dummy; } ;


 int PN_CON_DATAIF_EN ;
 int USB3_PN_CON ;
 int usb3_set_bit (struct renesas_usb3*,int ,int ) ;

__attribute__((used)) static void usb3_enable_dma_pipen(struct renesas_usb3 *usb3)
{
 usb3_set_bit(usb3, PN_CON_DATAIF_EN, USB3_PN_CON);
}
