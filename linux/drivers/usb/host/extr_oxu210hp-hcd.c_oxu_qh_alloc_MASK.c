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
struct oxu_hcd {int* qh_used; int /*<<< orphan*/  mem_lock; TYPE_1__* mem; } ;
struct ehci_qh {int /*<<< orphan*/ * dummy; int /*<<< orphan*/  qtd_list; int /*<<< orphan*/  qh_dma; struct oxu_hcd* oxu; int /*<<< orphan*/  kref; } ;
struct TYPE_2__ {int /*<<< orphan*/ * qh_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int QHEAD_NUM ; 
 int /*<<< orphan*/ * FUNC1 (struct oxu_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ehci_qh*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct oxu_hcd*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ehci_qh*) ; 

__attribute__((used)) static struct ehci_qh *FUNC8(struct oxu_hcd *oxu)
{
	int i;
	struct ehci_qh *qh = NULL;

	FUNC5(&oxu->mem_lock);

	for (i = 0; i < QHEAD_NUM; i++)
		if (!oxu->qh_used[i])
			break;

	if (i < QHEAD_NUM) {
		qh = (struct ehci_qh *) &oxu->mem->qh_pool[i];
		FUNC3(qh, 0, sizeof *qh);

		FUNC2(&qh->kref);
		qh->oxu = oxu;
		qh->qh_dma = FUNC7(qh);
		FUNC0(&qh->qtd_list);

		/* dummy td enables safe urb queuing */
		qh->dummy = FUNC1(oxu);
		if (qh->dummy == NULL) {
			FUNC4(oxu, "no dummy td\n");
			oxu->qh_used[i] = 0;
			qh = NULL;
			goto unlock;
		}

		oxu->qh_used[i] = 1;
	}
unlock:
	FUNC6(&oxu->mem_lock);

	return qh;
}