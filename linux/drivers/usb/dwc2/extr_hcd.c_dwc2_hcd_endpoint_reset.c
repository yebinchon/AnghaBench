
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_endpoint {struct dwc2_qh* hcpriv; } ;
struct dwc2_qh {int data_toggle; } ;
struct dwc2_hsotg {int dummy; } ;


 int DWC2_HC_PID_DATA0 ;
 int EINVAL ;

__attribute__((used)) static int dwc2_hcd_endpoint_reset(struct dwc2_hsotg *hsotg,
       struct usb_host_endpoint *ep)
{
 struct dwc2_qh *qh = ep->hcpriv;

 if (!qh)
  return -EINVAL;

 qh->data_toggle = DWC2_HC_PID_DATA0;

 return 0;
}
