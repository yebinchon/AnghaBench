
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct renesas_usb3_ep {int num; scalar_t__ dir_in; struct renesas_usb3_dma* dma; } ;
struct renesas_usb3_dma {int prd_dma; int num; } ;
struct renesas_usb3 {int dummy; } ;


 int AXI_INT_PRDEN_CLR_STA (int ) ;
 int AXI_INT_PRDERR_STA (int ) ;
 int DMA_COM_PIPE_NO (int) ;
 int DMA_CON_PIPE_DIR ;
 int DMA_CON_PRD_EN ;
 int USB3_AXI_INT_STA ;
 int USB3_DMA_CH0_CON (int ) ;
 int USB3_DMA_CH0_PRD_ADR (int ) ;
 int USB3_DMA_INT_STA ;
 int usb3_enable_dma_irq (struct renesas_usb3*,int) ;
 struct renesas_usb3* usb3_ep_to_usb3 (struct renesas_usb3_ep*) ;
 int usb3_write (struct renesas_usb3*,int,int ) ;
 int wmb () ;

__attribute__((used)) static void usb3_dma_kick_prd(struct renesas_usb3_ep *usb3_ep)
{
 struct renesas_usb3_dma *dma = usb3_ep->dma;
 struct renesas_usb3 *usb3 = usb3_ep_to_usb3(usb3_ep);
 u32 dma_con = DMA_COM_PIPE_NO(usb3_ep->num) | DMA_CON_PRD_EN;

 if (usb3_ep->dir_in)
  dma_con |= DMA_CON_PIPE_DIR;

 wmb();

 usb3_write(usb3, 1 << usb3_ep->num, USB3_DMA_INT_STA);
 usb3_write(usb3, AXI_INT_PRDEN_CLR_STA(dma->num) |
     AXI_INT_PRDERR_STA(dma->num), USB3_AXI_INT_STA);

 usb3_write(usb3, dma->prd_dma, USB3_DMA_CH0_PRD_ADR(dma->num));
 usb3_write(usb3, dma_con, USB3_DMA_CH0_CON(dma->num));
 usb3_enable_dma_irq(usb3, usb3_ep->num);
}
