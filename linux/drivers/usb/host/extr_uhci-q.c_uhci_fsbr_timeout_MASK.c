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
struct uhci_hcd {int /*<<< orphan*/  lock; scalar_t__ fsbr_expiring; } ;
struct timer_list {int dummy; } ;

/* Variables and functions */
 struct uhci_hcd* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fsbr_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct uhci_hcd* uhci ; 
 int /*<<< orphan*/  FUNC3 (struct uhci_hcd*) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct uhci_hcd *uhci = FUNC0(uhci, t, fsbr_timer);
	unsigned long flags;

	FUNC1(&uhci->lock, flags);
	if (uhci->fsbr_expiring) {
		uhci->fsbr_expiring = 0;
		FUNC3(uhci);
	}
	FUNC2(&uhci->lock, flags);
}