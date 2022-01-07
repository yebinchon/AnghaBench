
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct dwc2_hsotg_ep {int isochronous; } ;
struct dwc2_hsotg {size_t num_of_eps; struct dwc2_hsotg_ep** eps_in; int dev; } ;


 size_t BIT (size_t) ;
 int DAINTMSK ;
 int DIEPCTL (size_t) ;
 size_t DXEPCTL_EPDIS ;
 size_t DXEPCTL_EPENA ;
 size_t DXEPCTL_SNAK ;
 int GINTSTS ;
 size_t GINTSTS_INCOMPL_SOIN ;
 int dev_dbg (int ,char*) ;
 scalar_t__ dwc2_gadget_target_frame_elapsed (struct dwc2_hsotg_ep*) ;
 size_t dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,size_t,int ) ;

__attribute__((used)) static void dwc2_gadget_handle_incomplete_isoc_in(struct dwc2_hsotg *hsotg)
{
 struct dwc2_hsotg_ep *hs_ep;
 u32 epctrl;
 u32 daintmsk;
 u32 idx;

 dev_dbg(hsotg->dev, "Incomplete isoc in interrupt received:\n");

 daintmsk = dwc2_readl(hsotg, DAINTMSK);

 for (idx = 1; idx < hsotg->num_of_eps; idx++) {
  hs_ep = hsotg->eps_in[idx];

  if ((BIT(idx) & ~daintmsk) || !hs_ep->isochronous)
   continue;

  epctrl = dwc2_readl(hsotg, DIEPCTL(idx));
  if ((epctrl & DXEPCTL_EPENA) &&
      dwc2_gadget_target_frame_elapsed(hs_ep)) {
   epctrl |= DXEPCTL_SNAK;
   epctrl |= DXEPCTL_EPDIS;
   dwc2_writel(hsotg, epctrl, DIEPCTL(idx));
  }
 }


 dwc2_writel(hsotg, GINTSTS_INCOMPL_SOIN, GINTSTS);
}
