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
struct pcie_port {int /*<<< orphan*/  lock; } ;
struct keystone_pcie {int dummy; } ;
struct irq_data {int hwirq; } ;
struct dw_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct pcie_port* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct keystone_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct dw_pcie* FUNC6 (struct pcie_port*) ; 
 struct keystone_pcie* FUNC7 (struct dw_pcie*) ; 

__attribute__((used)) static void FUNC8(struct irq_data *data)
{
	struct pcie_port *pp = FUNC2(data);
	struct keystone_pcie *ks_pcie;
	u32 irq = data->hwirq;
	struct dw_pcie *pci;
	unsigned long flags;
	u32 reg_offset;
	u32 bit_pos;

	FUNC4(&pp->lock, flags);

	pci = FUNC6(pp);
	ks_pcie = FUNC7(pci);

	reg_offset = irq % 8;
	bit_pos = irq >> 3;

	FUNC3(ks_pcie, FUNC1(reg_offset),
			   FUNC0(bit_pos));

	FUNC5(&pp->lock, flags);
}