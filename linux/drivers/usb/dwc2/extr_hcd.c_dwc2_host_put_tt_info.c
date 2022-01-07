
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dwc2_tt {int refcount; TYPE_1__* usb_tt; } ;
struct dwc2_hsotg {int dummy; } ;
struct TYPE_2__ {int * hcpriv; } ;


 int WARN_ON (int) ;
 int kfree (struct dwc2_tt*) ;

void dwc2_host_put_tt_info(struct dwc2_hsotg *hsotg, struct dwc2_tt *dwc_tt)
{

 if (!dwc_tt)
  return;

 WARN_ON(dwc_tt->refcount < 1);

 dwc_tt->refcount--;
 if (!dwc_tt->refcount) {
  dwc_tt->usb_tt->hcpriv = ((void*)0);
  kfree(dwc_tt);
 }
}
