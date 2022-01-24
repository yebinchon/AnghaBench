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
typedef  int u16 ;
struct pci_dev {int dummy; } ;
struct dpc_dev {int cap_pos; scalar_t__ rp_extensions; TYPE_1__* dev; } ;
struct aer_err_info {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {struct pci_dev* port; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  PCIE_PORT_SERVICE_DPC ; 
 int PCI_EXP_DPC_SOURCE_ID ; 
 int PCI_EXP_DPC_STATUS ; 
 int PCI_EXP_DPC_STATUS_TRIGGER_RSN ; 
 int PCI_EXP_DPC_STATUS_TRIGGER_RSN_EXT ; 
 scalar_t__ FUNC0 (struct pci_dev*,struct aer_err_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,struct aer_err_info*) ; 
 scalar_t__ FUNC2 (struct pci_dev*,struct aer_err_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct dpc_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  pci_channel_io_frozen ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *context)
{
	struct aer_err_info info;
	struct dpc_dev *dpc = context;
	struct pci_dev *pdev = dpc->dev->port;
	u16 cap = dpc->cap_pos, status, source, reason, ext_reason;

	FUNC7(pdev, cap + PCI_EXP_DPC_STATUS, &status);
	FUNC7(pdev, cap + PCI_EXP_DPC_SOURCE_ID, &source);

	FUNC6(pdev, "containment event, status:%#06x source:%#06x\n",
		 status, source);

	reason = (status & PCI_EXP_DPC_STATUS_TRIGGER_RSN) >> 1;
	ext_reason = (status & PCI_EXP_DPC_STATUS_TRIGGER_RSN_EXT) >> 5;
	FUNC8(pdev, "%s detected\n",
		 (reason == 0) ? "unmasked uncorrectable error" :
		 (reason == 1) ? "ERR_NONFATAL" :
		 (reason == 2) ? "ERR_FATAL" :
		 (ext_reason == 0) ? "RP PIO error" :
		 (ext_reason == 1) ? "software trigger" :
				     "reserved error");

	/* show RP PIO error detail information */
	if (dpc->rp_extensions && reason == 3 && ext_reason == 0)
		FUNC3(dpc);
	else if (reason == 0 &&
		 FUNC2(pdev, &info) &&
		 FUNC0(pdev, &info)) {
		FUNC1(pdev, &info);
		FUNC5(pdev);
		FUNC4(pdev);
	}

	/* We configure DPC so it only triggers on ERR_FATAL */
	FUNC9(pdev, pci_channel_io_frozen, PCIE_PORT_SERVICE_DPC);

	return IRQ_HANDLED;
}