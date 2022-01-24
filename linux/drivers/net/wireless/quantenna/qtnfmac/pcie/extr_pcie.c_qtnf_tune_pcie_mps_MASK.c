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
struct pci_dev {int pcie_mpss; TYPE_1__* bus; } ;
struct TYPE_2__ {struct pci_dev* self; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct pci_dev*) ; 
 int FUNC3 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct pci_dev *parent;
	int mps_p, mps_o, mps_m, mps;
	int ret;

	/* current mps */
	mps_o = FUNC2(pdev);

	/* maximum supported mps */
	mps_m = 128 << pdev->pcie_mpss;

	/* suggested new mps value */
	mps = mps_m;

	if (pdev->bus && pdev->bus->self) {
		/* parent (bus) mps */
		parent = pdev->bus->self;

		if (FUNC1(parent)) {
			mps_p = FUNC2(parent);
			mps = FUNC0(mps_m, mps_p);
		}
	}

	ret = FUNC3(pdev, mps);
	if (ret) {
		FUNC5("failed to set mps to %d, keep using current %d\n",
		       mps, mps_o);
		return;
	}

	FUNC4("set mps to %d (was %d, max %d)\n", mps, mps_o, mps_m);
}