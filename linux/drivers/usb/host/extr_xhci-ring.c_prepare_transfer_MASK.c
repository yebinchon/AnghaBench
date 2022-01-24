#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xhci_virt_device {int /*<<< orphan*/  out_ctx; } ;
struct xhci_td {int /*<<< orphan*/  first_trb; int /*<<< orphan*/  start_seg; int /*<<< orphan*/  td_list; struct urb* urb; int /*<<< orphan*/  cancelled_td_list; } ;
struct xhci_ring {int /*<<< orphan*/  enqueue; int /*<<< orphan*/  enq_seg; int /*<<< orphan*/  td_list; } ;
struct xhci_hcd {int dummy; } ;
struct xhci_ep_ctx {int dummy; } ;
struct urb_priv {struct xhci_td* td; } ;
struct urb {TYPE_1__* dev; struct urb_priv* hcpriv; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct xhci_ep_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct xhci_hcd*,struct xhci_ring*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct urb*) ; 
 int /*<<< orphan*/  FUNC7 (struct xhci_hcd*,char*,unsigned int) ; 
 struct xhci_ep_ctx* FUNC8 (struct xhci_hcd*,int /*<<< orphan*/ ,unsigned int) ; 
 struct xhci_ring* FUNC9 (struct xhci_virt_device*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC10(struct xhci_hcd *xhci,
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
	struct xhci_td	*td;
	struct xhci_ring *ep_ring;
	struct xhci_ep_ctx *ep_ctx = FUNC8(xhci, xdev->out_ctx, ep_index);

	ep_ring = FUNC9(xdev, ep_index, stream_id);
	if (!ep_ring) {
		FUNC7(xhci, "Can't prepare ring for bad stream ID %u\n",
				stream_id);
		return -EINVAL;
	}

	ret = FUNC4(xhci, ep_ring, FUNC0(ep_ctx),
			   num_trbs, mem_flags);
	if (ret)
		return ret;

	urb_priv = urb->hcpriv;
	td = &urb_priv->td[td_index];

	FUNC1(&td->td_list);
	FUNC1(&td->cancelled_td_list);

	if (td_index == 0) {
		ret = FUNC6(FUNC2(urb->dev->bus), urb);
		if (FUNC5(ret))
			return ret;
	}

	td->urb = urb;
	/* Add this TD to the tail of the endpoint ring's TD list */
	FUNC3(&td->td_list, &ep_ring->td_list);
	td->start_seg = ep_ring->enq_seg;
	td->first_trb = ep_ring->enqueue;

	return 0;
}