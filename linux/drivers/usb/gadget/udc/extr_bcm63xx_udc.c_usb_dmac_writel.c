
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bcm63xx_udc {scalar_t__ iudma_regs; } ;


 int ENETDMA_CHAN_WIDTH ;
 scalar_t__ IUDMA_DMAC_OFFSET ;
 int bcm_writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void usb_dmac_writel(struct bcm63xx_udc *udc, u32 val, u32 off,
     int chan)
{
 bcm_writel(val, udc->iudma_regs + IUDMA_DMAC_OFFSET + off +
   (ENETDMA_CHAN_WIDTH * chan));
}
