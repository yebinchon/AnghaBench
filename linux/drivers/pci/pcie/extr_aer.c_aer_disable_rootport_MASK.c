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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int aer_cap; } ;
struct aer_rpc {struct pci_dev* rpd; } ;

/* Variables and functions */
 scalar_t__ PCI_ERR_ROOT_COMMAND ; 
 scalar_t__ PCI_ERR_ROOT_STATUS ; 
 int /*<<< orphan*/  ROOT_PORT_INTR_ON_MESG_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int) ; 

__attribute__((used)) static void FUNC3(struct aer_rpc *rpc)
{
	struct pci_dev *pdev = rpc->rpd;
	u32 reg32;
	int pos;

	/*
	 * Disable error reporting for the root port device and downstream port
	 * devices.
	 */
	FUNC2(pdev, false);

	pos = pdev->aer_cap;
	/* Disable Root's interrupt in response to error messages */
	FUNC0(pdev, pos + PCI_ERR_ROOT_COMMAND, &reg32);
	reg32 &= ~ROOT_PORT_INTR_ON_MESG_MASK;
	FUNC1(pdev, pos + PCI_ERR_ROOT_COMMAND, reg32);

	/* Clear Root's error status reg */
	FUNC0(pdev, pos + PCI_ERR_ROOT_STATUS, &reg32);
	FUNC1(pdev, pos + PCI_ERR_ROOT_STATUS, reg32);
}