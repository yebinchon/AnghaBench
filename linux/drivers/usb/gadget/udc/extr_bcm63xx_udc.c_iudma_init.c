
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm63xx_udc {int * iudma; } ;


 int BCM63XX_NUM_IUDMA ;
 scalar_t__ BIT (int) ;
 scalar_t__ ENETDMA_CFG_EN_MASK ;
 int ENETDMA_CFG_REG ;
 int ENETDMA_GLB_IRQMASK_REG ;
 int iudma_init_channel (struct bcm63xx_udc*,int) ;
 int iudma_reset_channel (struct bcm63xx_udc*,int *) ;
 int usb_dma_writel (struct bcm63xx_udc*,scalar_t__,int ) ;

__attribute__((used)) static int iudma_init(struct bcm63xx_udc *udc)
{
 int i, rc;

 usb_dma_writel(udc, ENETDMA_CFG_EN_MASK, ENETDMA_CFG_REG);

 for (i = 0; i < BCM63XX_NUM_IUDMA; i++) {
  rc = iudma_init_channel(udc, i);
  if (rc)
   return rc;
  iudma_reset_channel(udc, &udc->iudma[i]);
 }

 usb_dma_writel(udc, BIT(BCM63XX_NUM_IUDMA)-1, ENETDMA_GLB_IRQMASK_REG);
 return 0;
}
