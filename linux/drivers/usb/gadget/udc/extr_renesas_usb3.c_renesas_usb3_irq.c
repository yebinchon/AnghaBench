
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct renesas_usb3 {int dummy; } ;
typedef int irqreturn_t ;


 int AXI_INT_DMAINT ;
 int AXI_INT_EPCINT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int USB3_AXI_INT_STA ;
 int usb3_irq_dma (struct renesas_usb3*) ;
 int usb3_irq_epc (struct renesas_usb3*) ;
 int usb3_read (struct renesas_usb3*,int ) ;

__attribute__((used)) static irqreturn_t renesas_usb3_irq(int irq, void *_usb3)
{
 struct renesas_usb3 *usb3 = _usb3;
 irqreturn_t ret = IRQ_NONE;
 u32 axi_int_sta = usb3_read(usb3, USB3_AXI_INT_STA);

 if (axi_int_sta & AXI_INT_DMAINT) {
  usb3_irq_dma(usb3);
  ret = IRQ_HANDLED;
 }

 if (axi_int_sta & AXI_INT_EPCINT) {
  usb3_irq_epc(usb3);
  ret = IRQ_HANDLED;
 }

 return ret;
}
