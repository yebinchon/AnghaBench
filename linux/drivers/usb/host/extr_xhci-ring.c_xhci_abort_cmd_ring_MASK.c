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
typedef  int u64 ;
struct xhci_hcd {int /*<<< orphan*/  lock; int /*<<< orphan*/  cmd_ring_stop_completion; TYPE_1__* op_regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  cmd_ring; } ;

/* Variables and functions */
 int CMD_RING_ABORT ; 
 int /*<<< orphan*/  CMD_RING_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (struct xhci_hcd*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct xhci_hcd*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC9 (struct xhci_hcd*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC12 (struct xhci_hcd*) ; 
 int FUNC13 (struct xhci_hcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct xhci_hcd*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct xhci_hcd *xhci, unsigned long flags)
{
	u64 temp_64;
	int ret;

	FUNC6(xhci, "Abort command ring\n");

	FUNC1(&xhci->cmd_ring_stop_completion);

	temp_64 = FUNC13(xhci, &xhci->op_regs->cmd_ring);
	FUNC14(xhci, temp_64 | CMD_RING_ABORT,
			&xhci->op_regs->cmd_ring);

	/* Section 4.6.1.2 of xHCI 1.0 spec says software should also time the
	 * completion of the Command Abort operation. If CRR is not negated in 5
	 * seconds then driver handles it as if host died (-ENODEV).
	 * In the future we should distinguish between -ENODEV and -ETIMEDOUT
	 * and try to recover a -ETIMEDOUT with a host controller reset.
	 */
	ret = FUNC10(&xhci->op_regs->cmd_ring,
			CMD_RING_RUNNING, 0, 5 * 1000 * 1000);
	if (ret < 0) {
		FUNC7(xhci, "Abort failed to stop command ring: %d\n", ret);
		FUNC8(xhci);
		FUNC11(xhci);
		return ret;
	}
	/*
	 * Writing the CMD_RING_ABORT bit should cause a cmd completion event,
	 * however on some host hw the CMD_RING_RUNNING bit is correctly cleared
	 * but the completion event in never sent. Wait 2 secs (arbitrary
	 * number) to handle those cases after negation of CMD_RING_RUNNING.
	 */
	FUNC3(&xhci->lock, flags);
	ret = FUNC4(&xhci->cmd_ring_stop_completion,
					  FUNC0(2000));
	FUNC2(&xhci->lock, flags);
	if (!ret) {
		FUNC6(xhci, "No stop event for abort, ring start fail?\n");
		FUNC5(xhci);
	} else {
		FUNC9(xhci, FUNC12(xhci));
	}
	return 0;
}