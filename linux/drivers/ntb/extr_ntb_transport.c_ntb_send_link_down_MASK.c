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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct ntb_transport_qp {int /*<<< orphan*/  qp_num; int /*<<< orphan*/  tx_free_q; int /*<<< orphan*/  ntb_tx_free_q_lock; int /*<<< orphan*/  link_is_up; TYPE_1__* ndev; } ;
struct ntb_queue_entry {int /*<<< orphan*/  flags; scalar_t__ len; int /*<<< orphan*/ * buf; int /*<<< orphan*/ * cb_data; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINK_DOWN_FLAG ; 
 int NTB_LINK_DOWN_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct ntb_queue_entry* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ntb_transport_qp*,struct ntb_queue_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct ntb_transport_qp*) ; 

__attribute__((used)) static void FUNC6(struct ntb_transport_qp *qp)
{
	struct pci_dev *pdev = qp->ndev->pdev;
	struct ntb_queue_entry *entry;
	int i, rc;

	if (!qp->link_is_up)
		return;

	FUNC1(&pdev->dev, "qp %d: Send Link Down\n", qp->qp_num);

	for (i = 0; i < NTB_LINK_DOWN_TIMEOUT; i++) {
		entry = FUNC3(&qp->ntb_tx_free_q_lock, &qp->tx_free_q);
		if (entry)
			break;
		FUNC2(100);
	}

	if (!entry)
		return;

	entry->cb_data = NULL;
	entry->buf = NULL;
	entry->len = 0;
	entry->flags = LINK_DOWN_FLAG;

	rc = FUNC4(qp, entry);
	if (rc)
		FUNC0(&pdev->dev, "ntb: QP%d unable to send linkdown msg\n",
			qp->qp_num);

	FUNC5(qp);
}