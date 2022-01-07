
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ep {unsigned int maxpacket_limit; unsigned int maxpacket; } ;


 int trace_usb_ep_set_maxpacket_limit (struct usb_ep*,int ) ;

void usb_ep_set_maxpacket_limit(struct usb_ep *ep,
           unsigned maxpacket_limit)
{
 ep->maxpacket_limit = maxpacket_limit;
 ep->maxpacket = maxpacket_limit;

 trace_usb_ep_set_maxpacket_limit(ep, 0);
}
