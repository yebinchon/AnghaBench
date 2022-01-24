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
typedef  int u32 ;
struct xhci_hcd {int xhc_state; int /*<<< orphan*/  lock; TYPE_1__* op_regs; } ;
struct xhci_command {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TRB_DISABLE_SLOT ; 
 int XHCI_STATE_DYING ; 
 int XHCI_STATE_HALTED ; 
 int /*<<< orphan*/  FUNC0 (struct xhci_command*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct xhci_command* FUNC4 (struct xhci_hcd*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xhci_hcd*,int) ; 
 int FUNC6 (struct xhci_hcd*,struct xhci_command*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct xhci_hcd*) ; 

int FUNC8(struct xhci_hcd *xhci, u32 slot_id)
{
	struct xhci_command *command;
	unsigned long flags;
	u32 state;
	int ret = 0;

	command = FUNC4(xhci, false, GFP_KERNEL);
	if (!command)
		return -ENOMEM;

	FUNC5(xhci, slot_id);

	FUNC2(&xhci->lock, flags);
	/* Don't disable the slot if the host controller is dead. */
	state = FUNC1(&xhci->op_regs->status);
	if (state == 0xffffffff || (xhci->xhc_state & XHCI_STATE_DYING) ||
			(xhci->xhc_state & XHCI_STATE_HALTED)) {
		FUNC3(&xhci->lock, flags);
		FUNC0(command);
		return -ENODEV;
	}

	ret = FUNC6(xhci, command, TRB_DISABLE_SLOT,
				slot_id);
	if (ret) {
		FUNC3(&xhci->lock, flags);
		FUNC0(command);
		return ret;
	}
	FUNC7(xhci);
	FUNC3(&xhci->lock, flags);
	return ret;
}