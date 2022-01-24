#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct xhci_virt_ep {int ep_state; int /*<<< orphan*/  queued_deq_ptr; TYPE_2__* queued_deq_seg; } ;
struct xhci_hcd {TYPE_1__** devs; } ;
struct xhci_dequeue_state {int new_cycle_state; scalar_t__ stream_id; int /*<<< orphan*/  new_deq_ptr; TYPE_2__* new_deq_seg; } ;
struct xhci_command {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_5__ {scalar_t__ dma; } ;
struct TYPE_4__ {struct xhci_virt_ep* eps; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCT_PRI_TR ; 
 int SET_DEQ_PENDING ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  TRB_SET_DEQ ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (struct xhci_hcd*,struct xhci_command*,int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  trace_xhci_dbg_cancel_urb ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 struct xhci_command* FUNC8 (struct xhci_hcd*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xhci_hcd*,int /*<<< orphan*/ ,char*,TYPE_2__*,unsigned long long,int /*<<< orphan*/ ,unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC10 (struct xhci_hcd*,struct xhci_command*) ; 
 scalar_t__ FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct xhci_hcd*,char*,...) ; 

void FUNC13(struct xhci_hcd *xhci,
		unsigned int slot_id, unsigned int ep_index,
		struct xhci_dequeue_state *deq_state)
{
	dma_addr_t addr;
	u32 trb_slot_id = FUNC2(slot_id);
	u32 trb_ep_index = FUNC0(ep_index);
	u32 trb_stream_id = FUNC3(deq_state->stream_id);
	u32 trb_sct = 0;
	u32 type = FUNC4(TRB_SET_DEQ);
	struct xhci_virt_ep *ep;
	struct xhci_command *cmd;
	int ret;

	FUNC9(xhci, trace_xhci_dbg_cancel_urb,
		"Set TR Deq Ptr cmd, new deq seg = %p (0x%llx dma), new deq ptr = %p (0x%llx dma), new cycle = %u",
		deq_state->new_deq_seg,
		(unsigned long long)deq_state->new_deq_seg->dma,
		deq_state->new_deq_ptr,
		(unsigned long long)FUNC11(
			deq_state->new_deq_seg, deq_state->new_deq_ptr),
		deq_state->new_cycle_state);

	addr = FUNC11(deq_state->new_deq_seg,
				    deq_state->new_deq_ptr);
	if (addr == 0) {
		FUNC12(xhci, "WARN Cannot submit Set TR Deq Ptr\n");
		FUNC12(xhci, "WARN deq seg = %p, deq pt = %p\n",
			  deq_state->new_deq_seg, deq_state->new_deq_ptr);
		return;
	}
	ep = &xhci->devs[slot_id]->eps[ep_index];
	if ((ep->ep_state & SET_DEQ_PENDING)) {
		FUNC12(xhci, "WARN Cannot submit Set TR Deq Ptr\n");
		FUNC12(xhci, "A Set TR Deq Ptr command is pending.\n");
		return;
	}

	/* This function gets called from contexts where it cannot sleep */
	cmd = FUNC8(xhci, false, GFP_ATOMIC);
	if (!cmd)
		return;

	ep->queued_deq_seg = deq_state->new_deq_seg;
	ep->queued_deq_ptr = deq_state->new_deq_ptr;
	if (deq_state->stream_id)
		trb_sct = FUNC1(SCT_PRI_TR);
	ret = FUNC6(xhci, cmd,
		FUNC5(addr) | trb_sct | deq_state->new_cycle_state,
		FUNC7(addr), trb_stream_id,
		trb_slot_id | trb_ep_index | type, false);
	if (ret < 0) {
		FUNC10(xhci, cmd);
		return;
	}

	/* Stop the TD queueing code from ringing the doorbell until
	 * this command completes.  The HC won't set the dequeue pointer
	 * if the ring is running, and ringing the doorbell starts the
	 * ring running.
	 */
	ep->ep_state |= SET_DEQ_PENDING;
}