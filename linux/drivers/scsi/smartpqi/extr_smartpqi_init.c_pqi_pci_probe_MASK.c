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
struct pqi_ctrl_info {struct pci_dev* pci_dev; } ;
struct pci_device_id {scalar_t__ subvendor; scalar_t__ subdevice; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int NUMA_NO_NODE ; 
 scalar_t__ PCI_ANY_ID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct pqi_ctrl_info* FUNC4 (int) ; 
 int FUNC5 (struct pqi_ctrl_info*) ; 
 scalar_t__ pqi_disable_device_id_wildcards ; 
 int FUNC6 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,struct pci_device_id const*) ; 
 int /*<<< orphan*/  FUNC8 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC10(struct pci_dev *pci_dev,
	const struct pci_device_id *id)
{
	int rc;
	int node, cp_node;
	struct pqi_ctrl_info *ctrl_info;

	FUNC7(pci_dev, id);

	if (pqi_disable_device_id_wildcards &&
		id->subvendor == PCI_ANY_ID &&
		id->subdevice == PCI_ANY_ID) {
		FUNC3(&pci_dev->dev,
			"controller not probed because device ID wildcards are disabled\n");
		return -ENODEV;
	}

	if (id->subvendor == PCI_ANY_ID || id->subdevice == PCI_ANY_ID)
		FUNC3(&pci_dev->dev,
			"controller device ID matched using wildcards\n");

	node = FUNC2(&pci_dev->dev);
	if (node == NUMA_NO_NODE) {
		cp_node = FUNC0(0);
		if (cp_node == NUMA_NO_NODE)
			cp_node = 0;
		FUNC9(&pci_dev->dev, cp_node);
	}

	ctrl_info = FUNC4(node);
	if (!ctrl_info) {
		FUNC1(&pci_dev->dev,
			"failed to allocate controller info block\n");
		return -ENOMEM;
	}

	ctrl_info->pci_dev = pci_dev;

	rc = FUNC6(ctrl_info);
	if (rc)
		goto error;

	rc = FUNC5(ctrl_info);
	if (rc)
		goto error;

	return 0;

error:
	FUNC8(ctrl_info);

	return rc;
}