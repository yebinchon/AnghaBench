
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pch_udc_ep {int epsts; int num; int in; int dev; } ;
struct pch_udc_dev {int prot_stall; struct pch_udc_ep* ep; } ;


 int PCH_UDC_EPINT (int ,int ) ;
 size_t UDC_EPIN_IDX (int) ;
 int UDC_EPSTS_BNA ;
 int UDC_EPSTS_HE ;
 int UDC_EPSTS_IN ;
 int UDC_EPSTS_RCS ;
 int UDC_EPSTS_RSS ;
 int UDC_EPSTS_TDC ;
 int UDC_EPSTS_TXEMPTY ;
 int UDC_EPSTS_XFERDONE ;
 int pch_udc_complete_transfer (struct pch_udc_ep*) ;
 int pch_udc_enable_ep_interrupts (int ,int ) ;
 int pch_udc_ep_clear_stall (struct pch_udc_ep*) ;
 int pch_udc_ep_set_stall (struct pch_udc_ep*) ;
 int pch_udc_start_next_txrequest (struct pch_udc_ep*) ;

__attribute__((used)) static void pch_udc_svc_data_in(struct pch_udc_dev *dev, int ep_num)
{
 u32 epsts;
 struct pch_udc_ep *ep;

 ep = &dev->ep[UDC_EPIN_IDX(ep_num)];
 epsts = ep->epsts;
 ep->epsts = 0;

 if (!(epsts & (UDC_EPSTS_IN | UDC_EPSTS_BNA | UDC_EPSTS_HE |
         UDC_EPSTS_TDC | UDC_EPSTS_RCS | UDC_EPSTS_TXEMPTY |
         UDC_EPSTS_RSS | UDC_EPSTS_XFERDONE)))
  return;
 if ((epsts & UDC_EPSTS_BNA))
  return;
 if (epsts & UDC_EPSTS_HE)
  return;
 if (epsts & UDC_EPSTS_RSS) {
  pch_udc_ep_set_stall(ep);
  pch_udc_enable_ep_interrupts(ep->dev,
          PCH_UDC_EPINT(ep->in, ep->num));
 }
 if (epsts & UDC_EPSTS_RCS) {
  if (!dev->prot_stall) {
   pch_udc_ep_clear_stall(ep);
  } else {
   pch_udc_ep_set_stall(ep);
   pch_udc_enable_ep_interrupts(ep->dev,
      PCH_UDC_EPINT(ep->in, ep->num));
  }
 }
 if (epsts & UDC_EPSTS_TDC)
  pch_udc_complete_transfer(ep);

 if ((epsts & UDC_EPSTS_IN) && !(epsts & UDC_EPSTS_RSS) &&
     !(epsts & UDC_EPSTS_TDC) && !(epsts & UDC_EPSTS_TXEMPTY))
  pch_udc_start_next_txrequest(ep);
}
