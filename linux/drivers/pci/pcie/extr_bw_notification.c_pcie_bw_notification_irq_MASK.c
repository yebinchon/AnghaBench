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
typedef  int u16 ;
struct pcie_device {struct pci_dev* port; } ;
struct pci_dev {int /*<<< orphan*/  subordinate; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  PCI_EXP_LNKSTA ; 
 int PCI_EXP_LNKSTA_LBMS ; 
 int FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *context)
{
	struct pcie_device *srv = context;
	struct pci_dev *port = srv->port;
	u16 link_status, events;
	int ret;

	ret = FUNC0(port, PCI_EXP_LNKSTA, &link_status);
	events = link_status & PCI_EXP_LNKSTA_LBMS;

	if (ret != PCIBIOS_SUCCESSFUL || !events)
		return IRQ_NONE;

	FUNC1(port, PCI_EXP_LNKSTA, events);
	FUNC2(port->subordinate, link_status);
	return IRQ_WAKE_THREAD;
}