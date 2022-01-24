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
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 scalar_t__ PCI_ERR_ROOT_COMMAND ; 
 scalar_t__ PCI_ERR_ROOT_STATUS ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  ROOT_PORT_INTR_ON_MESG_MASK ; 
 int FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static pci_ers_result_t FUNC4(struct pci_dev *dev)
{
	u32 reg32;
	int pos;
	int rc;

	pos = dev->aer_cap;

	/* Disable Root's interrupt in response to error messages */
	FUNC2(dev, pos + PCI_ERR_ROOT_COMMAND, &reg32);
	reg32 &= ~ROOT_PORT_INTR_ON_MESG_MASK;
	FUNC3(dev, pos + PCI_ERR_ROOT_COMMAND, reg32);

	rc = FUNC0(dev);
	FUNC1(dev, "Root Port link has been reset\n");

	/* Clear Root Error Status */
	FUNC2(dev, pos + PCI_ERR_ROOT_STATUS, &reg32);
	FUNC3(dev, pos + PCI_ERR_ROOT_STATUS, reg32);

	/* Enable Root Port's interrupt in response to error messages */
	FUNC2(dev, pos + PCI_ERR_ROOT_COMMAND, &reg32);
	reg32 |= ROOT_PORT_INTR_ON_MESG_MASK;
	FUNC3(dev, pos + PCI_ERR_ROOT_COMMAND, reg32);

	return rc ? PCI_ERS_RESULT_DISCONNECT : PCI_ERS_RESULT_RECOVERED;
}