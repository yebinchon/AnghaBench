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
struct pcie_port {int dummy; } ;
struct keystone_pcie {int dummy; } ;
struct irq_data {int hwirq; } ;
struct dw_pcie {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_EOI ; 
 scalar_t__ MSI_IRQ_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct pcie_port* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct keystone_pcie*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct dw_pcie* FUNC4 (struct pcie_port*) ; 
 struct keystone_pcie* FUNC5 (struct dw_pcie*) ; 

__attribute__((used)) static void FUNC6(struct irq_data *data)
{
	struct pcie_port *pp  = FUNC2(data);
	struct keystone_pcie *ks_pcie;
	u32 irq = data->hwirq;
	struct dw_pcie *pci;
	u32 reg_offset;
	u32 bit_pos;

	pci = FUNC4(pp);
	ks_pcie = FUNC5(pci);

	reg_offset = irq % 8;
	bit_pos = irq >> 3;

	FUNC3(ks_pcie, FUNC1(reg_offset),
			   FUNC0(bit_pos));
	FUNC3(ks_pcie, IRQ_EOI, reg_offset + MSI_IRQ_OFFSET);
}