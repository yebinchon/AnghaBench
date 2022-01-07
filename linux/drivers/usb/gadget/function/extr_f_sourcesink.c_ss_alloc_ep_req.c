
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;


 struct usb_request* alloc_ep_req (struct usb_ep*,int) ;

__attribute__((used)) static inline struct usb_request *ss_alloc_ep_req(struct usb_ep *ep, int len)
{
 return alloc_ep_req(ep, len);
}
