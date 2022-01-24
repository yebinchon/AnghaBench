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
struct pci_dev {scalar_t__ vendor; int /*<<< orphan*/  dev; } ;
struct fwnode_handle {int /*<<< orphan*/  secondary; } ;
struct cht_int33fe_data {TYPE_1__* dp; } ;
struct TYPE_2__ {struct fwnode_handle* secondary; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t INT33FE_NODE_DISPLAYPORT ; 
 int PCI_CLASS_DISPLAY_VGA ; 
 scalar_t__ PCI_VENDOR_ID_INTEL ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * nodes ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct pci_dev* FUNC3 (int,int /*<<< orphan*/ *) ; 
 struct fwnode_handle* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct cht_int33fe_data *data)
{
	struct fwnode_handle *fwnode;
	struct pci_dev *pdev;

	fwnode = FUNC4(&nodes[INT33FE_NODE_DISPLAYPORT]);
	if (!fwnode)
		return -ENODEV;

	/* First let's find the GPU PCI device */
	pdev = FUNC3(PCI_CLASS_DISPLAY_VGA << 8, NULL);
	if (!pdev || pdev->vendor != PCI_VENDOR_ID_INTEL) {
		FUNC2(pdev);
		return -ENODEV;
	}

	/* Then the DP child device node */
	data->dp = FUNC1(&pdev->dev, "DD02");
	FUNC2(pdev);
	if (!data->dp)
		return -ENODEV;

	fwnode->secondary = FUNC0(-ENODEV);
	data->dp->secondary = fwnode;

	return 0;
}