
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm63xx_udc {int * iudma; } ;


 int BCM63XX_NUM_IUDMA ;
 int ENETDMA_CFG_REG ;
 int ENETDMA_GLB_IRQMASK_REG ;
 int iudma_reset_channel (struct bcm63xx_udc*,int *) ;
 int usb_dma_writel (struct bcm63xx_udc*,int ,int ) ;

__attribute__((used)) static void iudma_uninit(struct bcm63xx_udc *udc)
{
 int i;

 usb_dma_writel(udc, 0, ENETDMA_GLB_IRQMASK_REG);

 for (i = 0; i < BCM63XX_NUM_IUDMA; i++)
  iudma_reset_channel(udc, &udc->iudma[i]);

 usb_dma_writel(udc, 0, ENETDMA_CFG_REG);
}
