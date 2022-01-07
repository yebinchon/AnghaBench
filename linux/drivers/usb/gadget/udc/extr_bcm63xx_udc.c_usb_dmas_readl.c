
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bcm63xx_udc {scalar_t__ iudma_regs; } ;


 int ENETDMA_CHAN_WIDTH ;
 scalar_t__ IUDMA_DMAS_OFFSET ;
 scalar_t__ bcm_readl (scalar_t__) ;

__attribute__((used)) static inline u32 usb_dmas_readl(struct bcm63xx_udc *udc, u32 off, int chan)
{
 return bcm_readl(udc->iudma_regs + IUDMA_DMAS_OFFSET + off +
   (ENETDMA_CHAN_WIDTH * chan));
}
