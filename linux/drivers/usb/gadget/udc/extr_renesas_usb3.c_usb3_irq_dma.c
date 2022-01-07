
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct renesas_usb3 {int dummy; } ;


 int USB3_DMA_INT_ENA ;
 int USB3_DMA_INT_STA ;
 int usb3_irq_dma_int (struct renesas_usb3*,int) ;
 int usb3_read (struct renesas_usb3*,int ) ;
 int usb3_write (struct renesas_usb3*,int,int ) ;

__attribute__((used)) static void usb3_irq_dma(struct renesas_usb3 *usb3)
{
 u32 dma_sta = usb3_read(usb3, USB3_DMA_INT_STA);

 dma_sta &= usb3_read(usb3, USB3_DMA_INT_ENA);
 if (dma_sta) {
  usb3_write(usb3, dma_sta, USB3_DMA_INT_STA);
  usb3_irq_dma_int(usb3, dma_sta);
 }
}
