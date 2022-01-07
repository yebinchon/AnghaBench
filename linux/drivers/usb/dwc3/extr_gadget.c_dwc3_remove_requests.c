
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_request {int dummy; } ;
struct dwc3_ep {int cancelled_list; int pending_list; int started_list; } ;
struct dwc3 {int dummy; } ;


 int ESHUTDOWN ;
 int dwc3_gadget_giveback (struct dwc3_ep*,struct dwc3_request*,int ) ;
 int dwc3_stop_active_transfer (struct dwc3_ep*,int,int) ;
 int list_empty (int *) ;
 struct dwc3_request* next_request (int *) ;

__attribute__((used)) static void dwc3_remove_requests(struct dwc3 *dwc, struct dwc3_ep *dep)
{
 struct dwc3_request *req;

 dwc3_stop_active_transfer(dep, 1, 0);


 while (!list_empty(&dep->started_list)) {
  req = next_request(&dep->started_list);

  dwc3_gadget_giveback(dep, req, -ESHUTDOWN);
 }

 while (!list_empty(&dep->pending_list)) {
  req = next_request(&dep->pending_list);

  dwc3_gadget_giveback(dep, req, -ESHUTDOWN);
 }

 while (!list_empty(&dep->cancelled_list)) {
  req = next_request(&dep->cancelled_list);

  dwc3_gadget_giveback(dep, req, -ESHUTDOWN);
 }
}
