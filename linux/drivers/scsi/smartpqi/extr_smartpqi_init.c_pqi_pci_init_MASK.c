#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_9__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct pqi_ctrl_registers {int dummy; } ;
struct pqi_ctrl_info {TYPE_1__* pci_dev; TYPE_9__* registers; int /*<<< orphan*/ * pqi_registers; TYPE_9__* iomem_base; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_11__ {int /*<<< orphan*/  pqi_registers; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRIVER_NAME_SHORT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PCI_EXP_COMP_TIMEOUT_65_TO_210_MS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct pqi_ctrl_info *ctrl_info)
{
	int rc;
	u64 mask;

	rc = FUNC5(ctrl_info->pci_dev);
	if (rc) {
		FUNC1(&ctrl_info->pci_dev->dev,
			"failed to enable PCI device\n");
		return rc;
	}

	if (sizeof(dma_addr_t) > 4)
		mask = FUNC0(64);
	else
		mask = FUNC0(32);

	rc = FUNC2(&ctrl_info->pci_dev->dev, mask);
	if (rc) {
		FUNC1(&ctrl_info->pci_dev->dev, "failed to set DMA mask\n");
		goto disable_device;
	}

	rc = FUNC7(ctrl_info->pci_dev, DRIVER_NAME_SHORT);
	if (rc) {
		FUNC1(&ctrl_info->pci_dev->dev,
			"failed to obtain PCI resources\n");
		goto disable_device;
	}

	ctrl_info->iomem_base = FUNC3(FUNC8(
		ctrl_info->pci_dev, 0),
		sizeof(struct pqi_ctrl_registers));
	if (!ctrl_info->iomem_base) {
		FUNC1(&ctrl_info->pci_dev->dev,
			"failed to map memory for controller registers\n");
		rc = -ENOMEM;
		goto release_regions;
	}

#define PCI_EXP_COMP_TIMEOUT_65_TO_210_MS		0x6

	/* Increase the PCIe completion timeout. */
	rc = FUNC11(ctrl_info->pci_dev,
		PCI_EXP_COMP_TIMEOUT_65_TO_210_MS);
	if (rc) {
		FUNC1(&ctrl_info->pci_dev->dev,
			"failed to set PCIe completion timeout\n");
		goto release_regions;
	}

	/* Enable bus mastering. */
	FUNC10(ctrl_info->pci_dev);

	ctrl_info->registers = ctrl_info->iomem_base;
	ctrl_info->pqi_registers = &ctrl_info->registers->pqi_registers;

	FUNC9(ctrl_info->pci_dev, ctrl_info);

	return 0;

release_regions:
	FUNC6(ctrl_info->pci_dev);
disable_device:
	FUNC4(ctrl_info->pci_dev);

	return rc;
}