
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {int dummy; } ;


 int AXI_INT_DMAINT ;
 int AXI_INT_EPCINT ;
 int USB3_AXI_INT_ENA ;
 int USB3_DMA_INT_ENA ;
 int USB3_DMA_INT_STA ;
 int usb3_set_bit (struct renesas_usb3*,int,int ) ;
 int usb3_write (struct renesas_usb3*,int ,int ) ;

__attribute__((used)) static void usb3_init_axi_bridge(struct renesas_usb3 *usb3)
{

 usb3_write(usb3, ~0, USB3_DMA_INT_STA);
 usb3_write(usb3, 0, USB3_DMA_INT_ENA);
 usb3_set_bit(usb3, AXI_INT_DMAINT | AXI_INT_EPCINT, USB3_AXI_INT_ENA);
}
