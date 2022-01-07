
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg {int dev; } ;


 int DAINTMSK ;
 int DCTL ;
 int DCTL_SFTDISCON ;
 int DIEPMSK ;
 int DIEPMSK_AHBERRMSK ;
 int DIEPMSK_EPDISBLDMSK ;
 int DIEPMSK_TIMEOUTMSK ;
 int DIEPMSK_XFERCOMPLMSK ;
 int DOEPMSK ;
 int DOEPMSK_AHBERRMSK ;
 int DOEPMSK_EPDISBLDMSK ;
 int DOEPMSK_SETUPMSK ;
 int DOEPMSK_XFERCOMPLMSK ;
 int GAHBCFG ;
 int GAHBCFG_DMA_EN ;
 int GNPTXFSIZ ;
 int GRXFSIZ ;
 int dev_dbg (int ,char*,int ,int ) ;
 int dwc2_hsotg_init_fifo (struct dwc2_hsotg*) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_set_bit (struct dwc2_hsotg*,int ,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,int,int ) ;
 scalar_t__ using_dma (struct dwc2_hsotg*) ;

__attribute__((used)) static void dwc2_hsotg_init(struct dwc2_hsotg *hsotg)
{


 dwc2_writel(hsotg, DIEPMSK_TIMEOUTMSK | DIEPMSK_AHBERRMSK |
      DIEPMSK_EPDISBLDMSK | DIEPMSK_XFERCOMPLMSK,
      DIEPMSK);

 dwc2_writel(hsotg, DOEPMSK_SETUPMSK | DOEPMSK_AHBERRMSK |
      DOEPMSK_EPDISBLDMSK | DOEPMSK_XFERCOMPLMSK,
      DOEPMSK);

 dwc2_writel(hsotg, 0, DAINTMSK);


 dwc2_set_bit(hsotg, DCTL, DCTL_SFTDISCON);



 dev_dbg(hsotg->dev, "GRXFSIZ=0x%08x, GNPTXFSIZ=0x%08x\n",
  dwc2_readl(hsotg, GRXFSIZ),
  dwc2_readl(hsotg, GNPTXFSIZ));

 dwc2_hsotg_init_fifo(hsotg);

 if (using_dma(hsotg))
  dwc2_set_bit(hsotg, GAHBCFG, GAHBCFG_DMA_EN);
}
