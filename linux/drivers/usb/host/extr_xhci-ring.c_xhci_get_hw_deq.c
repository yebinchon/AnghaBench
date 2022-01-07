
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct xhci_virt_ep {int ep_state; TYPE_1__* stream_info; } ;
struct xhci_virt_device {int out_ctx; struct xhci_virt_ep* eps; } ;
struct xhci_stream_ctx {int stream_ring; } ;
struct xhci_hcd {int dummy; } ;
struct xhci_ep_ctx {int deq; } ;
struct TYPE_2__ {struct xhci_stream_ctx* stream_ctx_array; } ;


 int EP_HAS_STREAMS ;
 int le64_to_cpu (int ) ;
 struct xhci_ep_ctx* xhci_get_ep_ctx (struct xhci_hcd*,int ,unsigned int) ;

__attribute__((used)) static u64 xhci_get_hw_deq(struct xhci_hcd *xhci, struct xhci_virt_device *vdev,
      unsigned int ep_index, unsigned int stream_id)
{
 struct xhci_ep_ctx *ep_ctx;
 struct xhci_stream_ctx *st_ctx;
 struct xhci_virt_ep *ep;

 ep = &vdev->eps[ep_index];

 if (ep->ep_state & EP_HAS_STREAMS) {
  st_ctx = &ep->stream_info->stream_ctx_array[stream_id];
  return le64_to_cpu(st_ctx->stream_ring);
 }
 ep_ctx = xhci_get_ep_ctx(xhci, vdev->out_ctx, ep_index);
 return le64_to_cpu(ep_ctx->deq);
}
