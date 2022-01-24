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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {scalar_t__ ats_enabled; scalar_t__ ats_cap; int /*<<< orphan*/  ats_ref_cnt; scalar_t__ is_virtfn; } ;

/* Variables and functions */
 scalar_t__ PCI_ATS_CTRL ; 
 int /*<<< orphan*/  PCI_ATS_CTRL_ENABLE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct pci_dev* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC6(struct pci_dev *dev)
{
	struct pci_dev *pdev;
	u16 ctrl;

	if (FUNC0(!dev->ats_enabled))
		return;

	if (FUNC2(&dev->ats_ref_cnt))
		return;		/* VFs still enabled */

	if (dev->is_virtfn) {
		pdev = FUNC3(dev);
		FUNC1(&pdev->ats_ref_cnt);
	}

	FUNC4(dev, dev->ats_cap + PCI_ATS_CTRL, &ctrl);
	ctrl &= ~PCI_ATS_CTRL_ENABLE;
	FUNC5(dev, dev->ats_cap + PCI_ATS_CTRL, ctrl);

	dev->ats_enabled = 0;
}