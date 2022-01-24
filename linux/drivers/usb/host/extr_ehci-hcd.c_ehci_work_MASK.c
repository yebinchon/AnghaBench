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
struct ehci_hcd {int scanning; int need_rescan; scalar_t__ intr_count; scalar_t__ isoc_count; scalar_t__ async_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct ehci_hcd*) ; 

__attribute__((used)) static void FUNC4 (struct ehci_hcd *ehci)
{
	/* another CPU may drop ehci->lock during a schedule scan while
	 * it reports urb completions.  this flag guards against bogus
	 * attempts at re-entrant schedule scanning.
	 */
	if (ehci->scanning) {
		ehci->need_rescan = true;
		return;
	}
	ehci->scanning = true;

 rescan:
	ehci->need_rescan = false;
	if (ehci->async_count)
		FUNC0(ehci);
	if (ehci->intr_count > 0)
		FUNC1(ehci);
	if (ehci->isoc_count > 0)
		FUNC2(ehci);
	if (ehci->need_rescan)
		goto rescan;
	ehci->scanning = false;

	/* the IO watchdog guards against hardware or driver bugs that
	 * misplace IRQs, and should let us run completely without IRQs.
	 * such lossage has been observed on both VT6202 and VT8235.
	 */
	FUNC3(ehci);
}