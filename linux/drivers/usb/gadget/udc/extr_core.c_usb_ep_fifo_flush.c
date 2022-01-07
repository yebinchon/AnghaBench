
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ep {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* fifo_flush ) (struct usb_ep*) ;} ;


 int stub1 (struct usb_ep*) ;
 int trace_usb_ep_fifo_flush (struct usb_ep*,int ) ;

void usb_ep_fifo_flush(struct usb_ep *ep)
{
 if (ep->ops->fifo_flush)
  ep->ops->fifo_flush(ep);

 trace_usb_ep_fifo_flush(ep, 0);
}
