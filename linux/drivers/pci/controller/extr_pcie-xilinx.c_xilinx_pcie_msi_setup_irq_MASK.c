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
struct xilinx_pcie_port {scalar_t__ msi_pages; int /*<<< orphan*/  msi_domain; } ;
struct pci_dev {TYPE_1__* bus; } ;
struct msi_msg {unsigned int data; int /*<<< orphan*/  address_lo; scalar_t__ address_hi; } ;
struct msi_desc {int dummy; } ;
struct msi_controller {int dummy; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
struct TYPE_2__ {struct xilinx_pcie_port* sysdata; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct msi_desc*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,struct msi_msg*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct msi_controller *chip,
				     struct pci_dev *pdev,
				     struct msi_desc *desc)
{
	struct xilinx_pcie_port *port = pdev->bus->sysdata;
	unsigned int irq;
	int hwirq;
	struct msi_msg msg;
	phys_addr_t msg_addr;

	hwirq = FUNC4();
	if (hwirq < 0)
		return hwirq;

	irq = FUNC0(port->msi_domain, hwirq);
	if (!irq)
		return -EINVAL;

	FUNC1(irq, desc);

	msg_addr = FUNC3((void *)port->msi_pages);

	msg.address_hi = 0;
	msg.address_lo = msg_addr;
	msg.data = irq;

	FUNC2(irq, &msg);

	return 0;
}