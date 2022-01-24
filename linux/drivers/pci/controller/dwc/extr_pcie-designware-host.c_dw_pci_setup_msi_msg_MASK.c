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
typedef  scalar_t__ u64 ;
struct pcie_port {scalar_t__ msi_data; } ;
struct msi_msg {int /*<<< orphan*/  address_lo; int /*<<< orphan*/  address_hi; scalar_t__ data; } ;
struct irq_data {scalar_t__ hwirq; } ;
struct dw_pcie {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pcie_port* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct dw_pcie* FUNC3 (struct pcie_port*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct irq_data *d, struct msi_msg *msg)
{
	struct pcie_port *pp = FUNC1(d);
	struct dw_pcie *pci = FUNC3(pp);
	u64 msi_target;

	msi_target = (u64)pp->msi_data;

	msg->address_lo = FUNC2(msi_target);
	msg->address_hi = FUNC4(msi_target);

	msg->data = d->hwirq;

	FUNC0(pci->dev, "msi#%d address_hi %#x address_lo %#x\n",
		(int)d->hwirq, msg->address_hi, msg->address_lo);
}