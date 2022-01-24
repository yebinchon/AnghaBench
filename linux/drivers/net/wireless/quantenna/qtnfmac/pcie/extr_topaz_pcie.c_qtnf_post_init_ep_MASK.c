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
struct TYPE_3__ {struct pci_dev* pdev; } ;
struct qtnf_pcie_topaz_state {TYPE_2__* bda; TYPE_1__ base; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct TYPE_4__ {int /*<<< orphan*/  bda_bootstate; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  QTN_BDA_FW_QLINK_DONE ; 
 int /*<<< orphan*/  QTN_FW_QLINK_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (struct qtnf_pcie_topaz_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qtnf_pcie_topaz_state*) ; 

__attribute__((used)) static int FUNC4(struct qtnf_pcie_topaz_state *ts)
{
	struct pci_dev *pdev = ts->base.pdev;

	FUNC3(ts);
	FUNC0(ts);

	if (FUNC2(&ts->bda->bda_bootstate, QTN_BDA_FW_QLINK_DONE,
			    QTN_FW_QLINK_TIMEOUT_MS))
		return -ETIMEDOUT;

	FUNC1(pdev->irq);
	return 0;
}