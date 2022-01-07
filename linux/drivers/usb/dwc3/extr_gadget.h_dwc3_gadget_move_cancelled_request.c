
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_request {int list; int status; struct dwc3_ep* dep; } ;
struct dwc3_ep {int cancelled_list; } ;


 int DWC3_REQUEST_STATUS_CANCELLED ;
 int list_move_tail (int *,int *) ;

__attribute__((used)) static inline void dwc3_gadget_move_cancelled_request(struct dwc3_request *req)
{
 struct dwc3_ep *dep = req->dep;

 req->status = DWC3_REQUEST_STATUS_CANCELLED;
 list_move_tail(&req->list, &dep->cancelled_list);
}
