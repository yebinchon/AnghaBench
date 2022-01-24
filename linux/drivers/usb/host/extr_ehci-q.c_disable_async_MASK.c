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
struct ehci_hcd {int /*<<< orphan*/  async_idle; int /*<<< orphan*/  async_unlink; TYPE_2__* async; scalar_t__ async_count; } ;
struct TYPE_3__ {scalar_t__ qh; } ;
struct TYPE_4__ {TYPE_1__ qh_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ehci_hcd *ehci)
{
	if (--ehci->async_count)
		return;

	/* The async schedule and unlink lists are supposed to be empty */
	FUNC0(ehci->async->qh_next.qh || !FUNC2(&ehci->async_unlink) ||
			!FUNC2(&ehci->async_idle));

	/* Don't turn off the schedule until ASS is 1 */
	FUNC1(ehci);
}