
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg {int dev; } ;


 int GAHBCFG ;
 int GAHBCFG_GLBL_INTR_EN ;
 int GINTMSK ;
 int GINTMSK_COMMON ;
 int GINTSTS ;
 int dev_dbg (int ,char*,int,int) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;

__attribute__((used)) static u32 dwc2_read_common_intr(struct dwc2_hsotg *hsotg)
{
 u32 gintsts;
 u32 gintmsk;
 u32 gahbcfg;
 u32 gintmsk_common = GINTMSK_COMMON;

 gintsts = dwc2_readl(hsotg, GINTSTS);
 gintmsk = dwc2_readl(hsotg, GINTMSK);
 gahbcfg = dwc2_readl(hsotg, GAHBCFG);


 if (gintsts & gintmsk_common)
  dev_dbg(hsotg->dev, "gintsts=%08x  gintmsk=%08x\n",
   gintsts, gintmsk);

 if (gahbcfg & GAHBCFG_GLBL_INTR_EN)
  return gintsts & gintmsk & gintmsk_common;
 else
  return 0;
}
