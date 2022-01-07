
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {int dummy; } ;


 int DMA_INT (int) ;
 int USB3_DMA_INT_ENA ;
 int usb3_set_bit (struct renesas_usb3*,int ,int ) ;

__attribute__((used)) static void usb3_enable_dma_irq(struct renesas_usb3 *usb3, int num)
{
 usb3_set_bit(usb3, DMA_INT(num), USB3_DMA_INT_ENA);
}
