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
struct keystone_pcie {int /*<<< orphan*/  legacy_irq_domain; struct dw_pcie* pci; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_EOI ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct keystone_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct keystone_pcie*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct keystone_pcie *ks_pcie,
				      int offset)
{
	struct dw_pcie *pci = ks_pcie->pci;
	struct device *dev = pci->dev;
	u32 pending;
	int virq;

	pending = FUNC5(ks_pcie, FUNC1(offset));

	if (FUNC0(0) & pending) {
		virq = FUNC4(ks_pcie->legacy_irq_domain, offset);
		FUNC2(dev, ": irq: irq_offset %d, virq %d\n", offset, virq);
		FUNC3(virq);
	}

	/* EOI the INTx interrupt */
	FUNC6(ks_pcie, IRQ_EOI, offset);
}