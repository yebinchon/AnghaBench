#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct controller {int /*<<< orphan*/  pending_events; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  IRQ_NOTCONNECTED ; 
 scalar_t__ IRQ_WAKE_THREAD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct controller*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct controller*) ; 
 int pciehp_poll_time ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(void *data)
{
	struct controller *ctrl = data;

	FUNC4(10 * HZ); /* start with 10 sec delay */

	while (!FUNC1()) {
		/* poll for interrupt events or user requests */
		while (FUNC2(IRQ_NOTCONNECTED, ctrl) == IRQ_WAKE_THREAD ||
		       FUNC0(&ctrl->pending_events))
			FUNC3(IRQ_NOTCONNECTED, ctrl);

		if (pciehp_poll_time <= 0 || pciehp_poll_time > 60)
			pciehp_poll_time = 2; /* clamp to sane value */

		FUNC4(pciehp_poll_time * HZ);
	}

	return 0;
}