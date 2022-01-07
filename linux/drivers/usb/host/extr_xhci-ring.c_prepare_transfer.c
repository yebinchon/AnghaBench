
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_virt_device {int out_ctx; } ;
struct xhci_td {int first_trb; int start_seg; int td_list; struct urb* urb; int cancelled_td_list; } ;
struct xhci_ring {int enqueue; int enq_seg; int td_list; } ;
struct xhci_hcd {int dummy; } ;
struct xhci_ep_ctx {int dummy; } ;
struct urb_priv {struct xhci_td* td; } ;
struct urb {TYPE_1__* dev; struct urb_priv* hcpriv; } ;
typedef int gfp_t ;
struct TYPE_2__ {int bus; } ;


 int EINVAL ;
 int GET_EP_CTX_STATE (struct xhci_ep_ctx*) ;
 int INIT_LIST_HEAD (int *) ;
 int bus_to_hcd (int ) ;
 int list_add_tail (int *,int *) ;
 int prepare_ring (struct xhci_hcd*,struct xhci_ring*,int ,unsigned int,int ) ;
 scalar_t__ unlikely (int) ;
 int usb_hcd_link_urb_to_ep (int ,struct urb*) ;
 int xhci_dbg (struct xhci_hcd*,char*,unsigned int) ;
 struct xhci_ep_ctx* xhci_get_ep_ctx (struct xhci_hcd*,int ,unsigned int) ;
 struct xhci_ring* xhci_stream_id_to_ring (struct xhci_virt_device*,unsigned int,unsigned int) ;

__attribute__((used)) static int prepare_transfer(struct xhci_hcd *xhci,
  struct xhci_virt_device *xdev,
  unsigned int ep_index,
  unsigned int stream_id,
  unsigned int num_trbs,
  struct urb *urb,
  unsigned int td_index,
  gfp_t mem_flags)
{
 int ret;
 struct urb_priv *urb_priv;
 struct xhci_td *td;
 struct xhci_ring *ep_ring;
 struct xhci_ep_ctx *ep_ctx = xhci_get_ep_ctx(xhci, xdev->out_ctx, ep_index);

 ep_ring = xhci_stream_id_to_ring(xdev, ep_index, stream_id);
 if (!ep_ring) {
  xhci_dbg(xhci, "Can't prepare ring for bad stream ID %u\n",
    stream_id);
  return -EINVAL;
 }

 ret = prepare_ring(xhci, ep_ring, GET_EP_CTX_STATE(ep_ctx),
      num_trbs, mem_flags);
 if (ret)
  return ret;

 urb_priv = urb->hcpriv;
 td = &urb_priv->td[td_index];

 INIT_LIST_HEAD(&td->td_list);
 INIT_LIST_HEAD(&td->cancelled_td_list);

 if (td_index == 0) {
  ret = usb_hcd_link_urb_to_ep(bus_to_hcd(urb->dev->bus), urb);
  if (unlikely(ret))
   return ret;
 }

 td->urb = urb;

 list_add_tail(&td->td_list, &ep_ring->td_list);
 td->start_seg = ep_ring->enq_seg;
 td->first_trb = ep_ring->enqueue;

 return 0;
}
