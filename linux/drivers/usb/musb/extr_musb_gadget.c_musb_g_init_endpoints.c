
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct musb_hw_ep {int ep_out; scalar_t__ max_packet_sz_rx; int ep_in; scalar_t__ max_packet_sz_tx; scalar_t__ is_shared_fifo; } ;
struct TYPE_2__ {int ep_list; } ;
struct musb {scalar_t__ nr_endpoints; struct musb_hw_ep* endpoints; TYPE_1__ g; } ;


 int INIT_LIST_HEAD (int *) ;
 int init_peripheral_ep (struct musb*,int *,scalar_t__,int) ;

__attribute__((used)) static inline void musb_g_init_endpoints(struct musb *musb)
{
 u8 epnum;
 struct musb_hw_ep *hw_ep;
 unsigned count = 0;


 INIT_LIST_HEAD(&(musb->g.ep_list));

 for (epnum = 0, hw_ep = musb->endpoints;
   epnum < musb->nr_endpoints;
   epnum++, hw_ep++) {
  if (hw_ep->is_shared_fifo ) {
   init_peripheral_ep(musb, &hw_ep->ep_in, epnum, 0);
   count++;
  } else {
   if (hw_ep->max_packet_sz_tx) {
    init_peripheral_ep(musb, &hw_ep->ep_in,
       epnum, 1);
    count++;
   }
   if (hw_ep->max_packet_sz_rx) {
    init_peripheral_ep(musb, &hw_ep->ep_out,
       epnum, 0);
    count++;
   }
  }
 }
}
