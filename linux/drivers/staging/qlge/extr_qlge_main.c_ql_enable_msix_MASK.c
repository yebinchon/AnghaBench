#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ql_adapter {int intr_count; int /*<<< orphan*/  ndev; int /*<<< orphan*/  flags; int /*<<< orphan*/  pdev; TYPE_1__* msi_x_entry; } ;
struct msix_entry {int dummy; } ;
struct TYPE_4__ {int entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 scalar_t__ LEG_IRQ ; 
 scalar_t__ MSIX_IRQ ; 
 scalar_t__ MSI_IRQ ; 
 int /*<<< orphan*/  QL_MSIX_ENABLED ; 
 int /*<<< orphan*/  QL_MSI_ENABLED ; 
 int /*<<< orphan*/  ifup ; 
 TYPE_1__* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int,int) ; 
 scalar_t__ qlge_irq_type ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ql_adapter *qdev)
{
	int i, err;

	/* Get the MSIX vectors. */
	if (qlge_irq_type == MSIX_IRQ) {
		/* Try to alloc space for the msix struct,
		 * if it fails then go to MSI/legacy.
		 */
		qdev->msi_x_entry = FUNC0(qdev->intr_count,
					    sizeof(struct msix_entry),
					    GFP_KERNEL);
		if (!qdev->msi_x_entry) {
			qlge_irq_type = MSI_IRQ;
			goto msi;
		}

		for (i = 0; i < qdev->intr_count; i++)
			qdev->msi_x_entry[i].entry = i;

		err = FUNC6(qdev->pdev, qdev->msi_x_entry,
					    1, qdev->intr_count);
		if (err < 0) {
			FUNC1(qdev->msi_x_entry);
			qdev->msi_x_entry = NULL;
			FUNC4(qdev, ifup, qdev->ndev,
				   "MSI-X Enable failed, trying MSI.\n");
			qlge_irq_type = MSI_IRQ;
		} else {
			qdev->intr_count = err;
			FUNC7(QL_MSIX_ENABLED, &qdev->flags);
			FUNC2(qdev, ifup, qdev->ndev,
				   "MSI-X Enabled, got %d vectors.\n",
				   qdev->intr_count);
			return;
		}
	}
msi:
	qdev->intr_count = 1;
	if (qlge_irq_type == MSI_IRQ) {
		if (!FUNC5(qdev->pdev)) {
			FUNC7(QL_MSI_ENABLED, &qdev->flags);
			FUNC2(qdev, ifup, qdev->ndev,
				   "Running with MSI interrupts.\n");
			return;
		}
	}
	qlge_irq_type = LEG_IRQ;
	FUNC3(qdev, ifup, KERN_DEBUG, qdev->ndev,
		     "Running with legacy interrupts.\n");
}