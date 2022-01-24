#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union xhci_trb {int dummy; } xhci_trb ;
typedef  int u64 ;
typedef  int u32 ;
struct xhci_hcd {int xhc_state; int /*<<< orphan*/  lock; TYPE_3__* ir_set; TYPE_2__* event_ring; TYPE_1__* op_regs; } ;
struct usb_hcd {int /*<<< orphan*/  msi_enabled; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_6__ {int /*<<< orphan*/  erst_dequeue; int /*<<< orphan*/  irq_pending; } ;
struct TYPE_5__ {union xhci_trb* dequeue; int /*<<< orphan*/  deq_seg; } ;
struct TYPE_4__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int ERST_EHB ; 
 int ERST_PTR_MASK ; 
 int IMAN_IP ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int STS_EINT ; 
 int STS_FATAL ; 
 int XHCI_STATE_DYING ; 
 int XHCI_STATE_HALTED ; 
 struct xhci_hcd* FUNC0 (struct usb_hcd*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct xhci_hcd*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct xhci_hcd*) ; 
 scalar_t__ FUNC7 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC8 (struct xhci_hcd*) ; 
 int FUNC9 (struct xhci_hcd*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,union xhci_trb*) ; 
 int /*<<< orphan*/  FUNC11 (struct xhci_hcd*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct xhci_hcd*,int,int /*<<< orphan*/ *) ; 

irqreturn_t FUNC13(struct usb_hcd *hcd)
{
	struct xhci_hcd *xhci = FUNC0(hcd);
	union xhci_trb *event_ring_deq;
	irqreturn_t ret = IRQ_NONE;
	unsigned long flags;
	dma_addr_t deq;
	u64 temp_64;
	u32 status;

	FUNC2(&xhci->lock, flags);
	/* Check if the xHC generated the interrupt, or the irq is shared */
	status = FUNC1(&xhci->op_regs->status);
	if (status == ~(u32)0) {
		FUNC8(xhci);
		ret = IRQ_HANDLED;
		goto out;
	}

	if (!(status & STS_EINT))
		goto out;

	if (status & STS_FATAL) {
		FUNC11(xhci, "WARNING: Host System Error\n");
		FUNC6(xhci);
		ret = IRQ_HANDLED;
		goto out;
	}

	/*
	 * Clear the op reg interrupt status first,
	 * so we can receive interrupts from other MSI-X interrupters.
	 * Write 1 to clear the interrupt status.
	 */
	status |= STS_EINT;
	FUNC4(status, &xhci->op_regs->status);

	if (!hcd->msi_enabled) {
		u32 irq_pending;
		irq_pending = FUNC1(&xhci->ir_set->irq_pending);
		irq_pending |= IMAN_IP;
		FUNC4(irq_pending, &xhci->ir_set->irq_pending);
	}

	if (xhci->xhc_state & XHCI_STATE_DYING ||
	    xhci->xhc_state & XHCI_STATE_HALTED) {
		FUNC5(xhci, "xHCI dying, ignoring interrupt. "
				"Shouldn't IRQs be disabled?\n");
		/* Clear the event handler busy flag (RW1C);
		 * the event ring should be empty.
		 */
		temp_64 = FUNC9(xhci, &xhci->ir_set->erst_dequeue);
		FUNC12(xhci, temp_64 | ERST_EHB,
				&xhci->ir_set->erst_dequeue);
		ret = IRQ_HANDLED;
		goto out;
	}

	event_ring_deq = xhci->event_ring->dequeue;
	/* FIXME this should be a delayed service routine
	 * that clears the EHB.
	 */
	while (FUNC7(xhci) > 0) {}

	temp_64 = FUNC9(xhci, &xhci->ir_set->erst_dequeue);
	/* If necessary, update the HW's version of the event ring deq ptr. */
	if (event_ring_deq != xhci->event_ring->dequeue) {
		deq = FUNC10(xhci->event_ring->deq_seg,
				xhci->event_ring->dequeue);
		if (deq == 0)
			FUNC11(xhci, "WARN something wrong with SW event "
					"ring dequeue ptr.\n");
		/* Update HC event ring dequeue pointer */
		temp_64 &= ERST_PTR_MASK;
		temp_64 |= ((u64) deq & (u64) ~ERST_PTR_MASK);
	}

	/* Clear the event handler busy flag (RW1C); event ring is empty. */
	temp_64 |= ERST_EHB;
	FUNC12(xhci, temp_64, &xhci->ir_set->erst_dequeue);
	ret = IRQ_HANDLED;

out:
	FUNC3(&xhci->lock, flags);

	return ret;
}