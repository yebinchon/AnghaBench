
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg_ep {scalar_t__ periodic; int dir_in; } ;
struct dwc2_hsotg {int num_of_eps; } ;


 int dwc2_hsotg_trytx (struct dwc2_hsotg*,struct dwc2_hsotg_ep*) ;
 struct dwc2_hsotg_ep* index_to_ep (struct dwc2_hsotg*,int,int) ;

__attribute__((used)) static void dwc2_hsotg_irq_fifoempty(struct dwc2_hsotg *hsotg, bool periodic)
{
 struct dwc2_hsotg_ep *ep;
 int epno, ret;


 for (epno = 0; epno < hsotg->num_of_eps; epno++) {
  ep = index_to_ep(hsotg, epno, 1);

  if (!ep)
   continue;

  if (!ep->dir_in)
   continue;

  if ((periodic && !ep->periodic) ||
      (!periodic && ep->periodic))
   continue;

  ret = dwc2_hsotg_trytx(hsotg, ep);
  if (ret < 0)
   break;
 }
}
