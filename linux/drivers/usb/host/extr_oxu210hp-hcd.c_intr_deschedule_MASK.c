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
struct oxu_hcd {int dummy; } ;
struct ehci_qh {int hw_info2; int /*<<< orphan*/  hw_next; int /*<<< orphan*/  qh_state; int /*<<< orphan*/  qtd_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  EHCI_LIST_END ; 
 int /*<<< orphan*/  QH_CMASK ; 
 int /*<<< orphan*/  QH_STATE_IDLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct oxu_hcd*,struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct oxu_hcd *oxu, struct ehci_qh *qh)
{
	unsigned wait;

	FUNC2(oxu, qh);

	/* simple/paranoid:  always delay, expecting the HC needs to read
	 * qh->hw_next or finish a writeback after SPLIT/CSPLIT ... and
	 * expect hub_wq to clean up after any CSPLITs we won't issue.
	 * active high speed queues may need bigger delays...
	 */
	if (FUNC1(&qh->qtd_list)
		|| (FUNC0(QH_CMASK) & qh->hw_info2) != 0)
		wait = 2;
	else
		wait = 55;	/* worst case: 3 * 1024 */

	FUNC3(wait);
	qh->qh_state = QH_STATE_IDLE;
	qh->hw_next = EHCI_LIST_END;
	FUNC4();
}