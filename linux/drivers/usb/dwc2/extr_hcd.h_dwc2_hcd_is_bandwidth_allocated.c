
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_endpoint {struct dwc2_qh* hcpriv; } ;
struct dwc2_qh {int qh_list_entry; } ;
struct dwc2_hsotg {int dummy; } ;


 int list_empty (int *) ;

__attribute__((used)) static inline int dwc2_hcd_is_bandwidth_allocated(struct dwc2_hsotg *hsotg,
        struct usb_host_endpoint *ep)
{
 struct dwc2_qh *qh = ep->hcpriv;

 if (qh && !list_empty(&qh->qh_list_entry))
  return 1;

 return 0;
}
