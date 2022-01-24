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
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct nvme_dev {TYPE_1__ ctrl; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
typedef  int pci_channel_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_CAN_RECOVER ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_NEED_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_dev*,int) ; 
#define  pci_channel_io_frozen 130 
#define  pci_channel_io_normal 129 
#define  pci_channel_io_perm_failure 128 
 struct nvme_dev* FUNC2 (struct pci_dev*) ; 

__attribute__((used)) static pci_ers_result_t FUNC3(struct pci_dev *pdev,
						pci_channel_state_t state)
{
	struct nvme_dev *dev = FUNC2(pdev);

	/*
	 * A frozen channel requires a reset. When detected, this method will
	 * shutdown the controller to quiesce. The controller will be restarted
	 * after the slot reset through driver's slot_reset callback.
	 */
	switch (state) {
	case pci_channel_io_normal:
		return PCI_ERS_RESULT_CAN_RECOVER;
	case pci_channel_io_frozen:
		FUNC0(dev->ctrl.device,
			"frozen state error detected, reset controller\n");
		FUNC1(dev, false);
		return PCI_ERS_RESULT_NEED_RESET;
	case pci_channel_io_perm_failure:
		FUNC0(dev->ctrl.device,
			"failure state error detected, request disconnect\n");
		return PCI_ERS_RESULT_DISCONNECT;
	}
	return PCI_ERS_RESULT_NEED_RESET;
}