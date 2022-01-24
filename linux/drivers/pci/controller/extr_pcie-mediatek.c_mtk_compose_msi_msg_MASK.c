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
struct mtk_pcie_port {TYPE_1__* pcie; scalar_t__ base; } ;
struct msi_msg {int /*<<< orphan*/  address_lo; int /*<<< orphan*/  address_hi; scalar_t__ data; } ;
struct irq_data {scalar_t__ hwirq; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ PCIE_MSI_VECTOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mtk_pcie_port* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct irq_data *data, struct msi_msg *msg)
{
	struct mtk_pcie_port *port = FUNC1(data);
	phys_addr_t addr;

	/* MT2712/MT7622 only support 32-bit MSI addresses */
	addr = FUNC3(port->base + PCIE_MSI_VECTOR);
	msg->address_hi = 0;
	msg->address_lo = FUNC2(addr);

	msg->data = data->hwirq;

	FUNC0(port->pcie->dev, "msi#%d address_hi %#x address_lo %#x\n",
		(int)data->hwirq, msg->address_hi, msg->address_lo);
}