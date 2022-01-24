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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct nvme_dev {TYPE_1__ ctrl; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  PCI_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct nvme_dev *dev, u32 csts)
{
	/* Read a config register to help see what died. */
	u16 pci_status;
	int result;

	result = FUNC1(FUNC2(dev->dev), PCI_STATUS,
				      &pci_status);
	if (result == PCIBIOS_SUCCESSFUL)
		FUNC0(dev->ctrl.device,
			 "controller is down; will reset: CSTS=0x%x, PCI_STATUS=0x%hx\n",
			 csts, pci_status);
	else
		FUNC0(dev->ctrl.device,
			 "controller is down; will reset: CSTS=0x%x, PCI_STATUS read failed (%d)\n",
			 csts, result);
}