
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_endpoint_descriptor {int dummy; } ;
struct fotg210_udc {struct fotg210_ep** ep; } ;
struct TYPE_2__ {int maxpacket; } ;
struct fotg210_ep {size_t epnum; int dir_in; TYPE_1__ ep; int type; struct fotg210_udc* fotg210; } ;


 int fotg210_fifo_ep_mapping (struct fotg210_ep*,size_t,int ) ;
 int fotg210_set_fifo_dir (struct fotg210_ep*,size_t,int ) ;
 int fotg210_set_mps (struct fotg210_ep*,size_t,int ,int ) ;
 int fotg210_set_tfrtype (struct fotg210_ep*,size_t,int ) ;

__attribute__((used)) static int fotg210_config_ep(struct fotg210_ep *ep,
       const struct usb_endpoint_descriptor *desc)
{
 struct fotg210_udc *fotg210 = ep->fotg210;

 fotg210_set_fifo_dir(ep, ep->epnum, ep->dir_in);
 fotg210_set_tfrtype(ep, ep->epnum, ep->type);
 fotg210_set_mps(ep, ep->epnum, ep->ep.maxpacket, ep->dir_in);
 fotg210_fifo_ep_mapping(ep, ep->epnum, ep->dir_in);

 fotg210->ep[ep->epnum] = ep;

 return 0;
}
