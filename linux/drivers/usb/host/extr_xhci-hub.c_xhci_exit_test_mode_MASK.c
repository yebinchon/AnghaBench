#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xhci_hcd {scalar_t__ test_mode; int xhc_state; } ;
struct TYPE_3__ {int /*<<< orphan*/  controller; } ;
struct TYPE_4__ {TYPE_1__ self; } ;

/* Variables and functions */
 scalar_t__ TEST_FORCE_EN ; 
 int XHCI_STATE_HALTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_hcd*,char*) ; 
 int FUNC2 (struct xhci_hcd*) ; 
 int FUNC3 (struct xhci_hcd*) ; 
 TYPE_2__* FUNC4 (struct xhci_hcd*) ; 

__attribute__((used)) static int FUNC5(struct xhci_hcd *xhci)
{
	int retval;

	if (!xhci->test_mode) {
		FUNC1(xhci, "Not in test mode, do nothing.\n");
		return 0;
	}
	if (xhci->test_mode == TEST_FORCE_EN &&
		!(xhci->xhc_state & XHCI_STATE_HALTED)) {
		retval = FUNC2(xhci);
		if (retval)
			return retval;
	}
	FUNC0(FUNC4(xhci)->self.controller);
	xhci->test_mode = 0;
	return FUNC3(xhci);
}