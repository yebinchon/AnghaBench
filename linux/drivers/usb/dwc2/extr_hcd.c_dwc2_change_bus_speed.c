
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct TYPE_2__ {int speed; } ;
struct dwc2_hsotg {int wf_otg; int wq_otg; TYPE_1__ params; } ;


 struct dwc2_hsotg* dwc2_hcd_to_hsotg (struct usb_hcd*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void dwc2_change_bus_speed(struct usb_hcd *hcd, int speed)
{
 struct dwc2_hsotg *hsotg = dwc2_hcd_to_hsotg(hcd);

 if (hsotg->params.speed == speed)
  return;

 hsotg->params.speed = speed;
 queue_work(hsotg->wq_otg, &hsotg->wf_otg);
}
