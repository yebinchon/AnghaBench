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
typedef  int u32 ;
struct pcie_pme_service_data {int /*<<< orphan*/  work; int /*<<< orphan*/  lock; } ;
struct pcie_device {struct pci_dev* port; } ;
struct pci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  PCI_EXP_RTSTA ; 
 int PCI_EXP_RTSTA_PME ; 
 struct pcie_pme_service_data* FUNC0 (struct pcie_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *context)
{
	struct pci_dev *port;
	struct pcie_pme_service_data *data;
	u32 rtsta;
	unsigned long flags;

	port = ((struct pcie_device *)context)->port;
	data = FUNC0((struct pcie_device *)context);

	FUNC4(&data->lock, flags);
	FUNC1(port, PCI_EXP_RTSTA, &rtsta);

	if (rtsta == (u32) ~0 || !(rtsta & PCI_EXP_RTSTA_PME)) {
		FUNC5(&data->lock, flags);
		return IRQ_NONE;
	}

	FUNC2(port, false);
	FUNC5(&data->lock, flags);

	/* We don't use pm_wq, because it's freezable. */
	FUNC3(&data->work);

	return IRQ_HANDLED;
}