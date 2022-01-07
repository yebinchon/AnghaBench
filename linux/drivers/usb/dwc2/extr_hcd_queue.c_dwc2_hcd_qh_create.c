
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dwc2_qh {int dummy; } ;
struct TYPE_2__ {scalar_t__ dma_desc_enable; } ;
struct dwc2_hsotg {TYPE_1__ params; } ;
struct dwc2_hcd_urb {int priv; } ;
typedef int gfp_t ;


 int dwc2_hcd_qh_free (struct dwc2_hsotg*,struct dwc2_qh*) ;
 scalar_t__ dwc2_hcd_qh_init_ddma (struct dwc2_hsotg*,struct dwc2_qh*,int ) ;
 int dwc2_qh_init (struct dwc2_hsotg*,struct dwc2_qh*,struct dwc2_hcd_urb*,int ) ;
 struct dwc2_qh* kzalloc (int,int ) ;

struct dwc2_qh *dwc2_hcd_qh_create(struct dwc2_hsotg *hsotg,
       struct dwc2_hcd_urb *urb,
       gfp_t mem_flags)
{
 struct dwc2_qh *qh;

 if (!urb->priv)
  return ((void*)0);


 qh = kzalloc(sizeof(*qh), mem_flags);
 if (!qh)
  return ((void*)0);

 dwc2_qh_init(hsotg, qh, urb, mem_flags);

 if (hsotg->params.dma_desc_enable &&
     dwc2_hcd_qh_init_ddma(hsotg, qh, mem_flags) < 0) {
  dwc2_hcd_qh_free(hsotg, qh);
  return ((void*)0);
 }

 return qh;
}
