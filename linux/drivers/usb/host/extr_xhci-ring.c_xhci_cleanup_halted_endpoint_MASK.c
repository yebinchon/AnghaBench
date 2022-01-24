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
struct xhci_virt_ep {int /*<<< orphan*/  ep_state; } ;
struct xhci_td {int dummy; } ;
struct xhci_hcd {TYPE_1__** devs; } ;
struct xhci_command {int dummy; } ;
typedef  enum xhci_ep_reset_type { ____Placeholder_xhci_ep_reset_type } xhci_ep_reset_type ;
struct TYPE_2__ {int flags; struct xhci_virt_ep* eps; } ;

/* Variables and functions */
 int /*<<< orphan*/  EP_HALTED ; 
 int /*<<< orphan*/  EP_HARD_CLEAR_TOGGLE ; 
 int EP_HARD_RESET ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int VDEV_PORT_ERROR ; 
 struct xhci_command* FUNC0 (struct xhci_hcd*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_hcd*,unsigned int,unsigned int,struct xhci_td*) ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_hcd*,struct xhci_td*,struct xhci_virt_ep*) ; 
 int /*<<< orphan*/  FUNC3 (struct xhci_hcd*,struct xhci_command*,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct xhci_hcd*) ; 

__attribute__((used)) static void FUNC5(struct xhci_hcd *xhci,
		unsigned int slot_id, unsigned int ep_index,
		unsigned int stream_id, struct xhci_td *td,
		enum xhci_ep_reset_type reset_type)
{
	struct xhci_virt_ep *ep = &xhci->devs[slot_id]->eps[ep_index];
	struct xhci_command *command;

	/*
	 * Avoid resetting endpoint if link is inactive. Can cause host hang.
	 * Device will be reset soon to recover the link so don't do anything
	 */
	if (xhci->devs[slot_id]->flags & VDEV_PORT_ERROR)
		return;

	command = FUNC0(xhci, false, GFP_ATOMIC);
	if (!command)
		return;

	ep->ep_state |= EP_HALTED;

	FUNC3(xhci, command, slot_id, ep_index, reset_type);

	if (reset_type == EP_HARD_RESET) {
		ep->ep_state |= EP_HARD_CLEAR_TOGGLE;
		FUNC1(xhci, ep_index, stream_id, td);
		FUNC2(xhci, td, ep);
	}
	FUNC4(xhci);
}