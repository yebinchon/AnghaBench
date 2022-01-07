
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct xhci_ring {unsigned int num_trbs_free; scalar_t__ type; int cycle_state; TYPE_2__* enq_seg; TYPE_3__* enqueue; } ;
struct xhci_hcd {int quirks; struct xhci_ring* cmd_ring; } ;
typedef int gfp_t ;
struct TYPE_5__ {int control; } ;
struct TYPE_7__ {TYPE_1__ link; } ;
struct TYPE_6__ {TYPE_3__* trbs; struct TYPE_6__* next; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;





 int TRB_CHAIN ;
 int TRB_CYCLE ;
 scalar_t__ TYPE_ISOC ;
 int XHCI_AMD_0x96_HOST ;
 int cpu_to_le32 (int ) ;
 scalar_t__ link_trb_toggles_cycle (TYPE_3__*) ;
 scalar_t__ room_on_ring (struct xhci_hcd*,struct xhci_ring*,unsigned int) ;
 int trace_xhci_dbg_ring_expansion ;
 scalar_t__ trb_is_link (TYPE_3__*) ;
 int wmb () ;
 int xhci_dbg (struct xhci_hcd*,char*) ;
 int xhci_dbg_trace (struct xhci_hcd*,int ,char*) ;
 int xhci_err (struct xhci_hcd*,char*) ;
 int xhci_link_trb_quirk (struct xhci_hcd*) ;
 scalar_t__ xhci_ring_expansion (struct xhci_hcd*,struct xhci_ring*,unsigned int,int ) ;
 int xhci_warn (struct xhci_hcd*,char*) ;

__attribute__((used)) static int prepare_ring(struct xhci_hcd *xhci, struct xhci_ring *ep_ring,
  u32 ep_state, unsigned int num_trbs, gfp_t mem_flags)
{
 unsigned int num_trbs_needed;


 switch (ep_state) {
 case 132:




  xhci_warn(xhci, "WARN urb submitted to disabled ep\n");
  return -ENOENT;
 case 131:
  xhci_warn(xhci, "WARN waiting for error on ep to be cleared\n");


  return -EINVAL;
 case 130:
  xhci_dbg(xhci, "WARN halted endpoint, queueing URB anyway.\n");
 case 128:
 case 129:
  break;
 default:
  xhci_err(xhci, "ERROR unknown endpoint state for ep\n");




  return -EINVAL;
 }

 while (1) {
  if (room_on_ring(xhci, ep_ring, num_trbs))
   break;

  if (ep_ring == xhci->cmd_ring) {
   xhci_err(xhci, "Do not support expand command ring\n");
   return -ENOMEM;
  }

  xhci_dbg_trace(xhci, trace_xhci_dbg_ring_expansion,
    "ERROR no room on ep ring, try ring expansion");
  num_trbs_needed = num_trbs - ep_ring->num_trbs_free;
  if (xhci_ring_expansion(xhci, ep_ring, num_trbs_needed,
     mem_flags)) {
   xhci_err(xhci, "Ring expansion failed\n");
   return -ENOMEM;
  }
 }

 while (trb_is_link(ep_ring->enqueue)) {



  if (!xhci_link_trb_quirk(xhci) &&
      !(ep_ring->type == TYPE_ISOC &&
        (xhci->quirks & XHCI_AMD_0x96_HOST)))
   ep_ring->enqueue->link.control &=
    cpu_to_le32(~TRB_CHAIN);
  else
   ep_ring->enqueue->link.control |=
    cpu_to_le32(TRB_CHAIN);

  wmb();
  ep_ring->enqueue->link.control ^= cpu_to_le32(TRB_CYCLE);


  if (link_trb_toggles_cycle(ep_ring->enqueue))
   ep_ring->cycle_state ^= 1;

  ep_ring->enq_seg = ep_ring->enq_seg->next;
  ep_ring->enqueue = ep_ring->enq_seg->trbs;
 }
 return 0;
}
