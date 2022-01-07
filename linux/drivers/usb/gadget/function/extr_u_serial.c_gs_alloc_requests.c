
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {void (* complete ) (struct usb_ep*,struct usb_request*) ;int list; } ;
struct usb_ep {int maxpacket; } ;
struct list_head {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int QUEUE_SIZE ;
 struct usb_request* gs_alloc_req (struct usb_ep*,int ,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 scalar_t__ list_empty (struct list_head*) ;

__attribute__((used)) static int gs_alloc_requests(struct usb_ep *ep, struct list_head *head,
  void (*fn)(struct usb_ep *, struct usb_request *),
  int *allocated)
{
 int i;
 struct usb_request *req;
 int n = allocated ? QUEUE_SIZE - *allocated : QUEUE_SIZE;





 for (i = 0; i < n; i++) {
  req = gs_alloc_req(ep, ep->maxpacket, GFP_ATOMIC);
  if (!req)
   return list_empty(head) ? -ENOMEM : 0;
  req->complete = fn;
  list_add_tail(&req->list, head);
  if (allocated)
   (*allocated)++;
 }
 return 0;
}
