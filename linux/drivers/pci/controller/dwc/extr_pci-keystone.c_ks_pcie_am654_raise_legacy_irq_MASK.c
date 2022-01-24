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
typedef  int u8 ;
struct keystone_pcie {struct dw_pcie* pci; } ;
struct dw_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_ENABLE ; 
 int /*<<< orphan*/  PCIE_EP_IRQ_CLR ; 
 int /*<<< orphan*/  PCIE_EP_IRQ_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  PCI_INTERRUPT_PIN ; 
 int FUNC2 (struct dw_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct keystone_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct keystone_pcie *ks_pcie)
{
	struct dw_pcie *pci = ks_pcie->pci;
	u8 int_pin;

	int_pin = FUNC2(pci, PCI_INTERRUPT_PIN);
	if (int_pin == 0 || int_pin > 4)
		return;

	FUNC3(ks_pcie, FUNC1(int_pin),
			   INT_ENABLE);
	FUNC3(ks_pcie, PCIE_EP_IRQ_SET, INT_ENABLE);
	FUNC4(1);
	FUNC3(ks_pcie, PCIE_EP_IRQ_CLR, INT_ENABLE);
	FUNC3(ks_pcie, FUNC0(int_pin),
			   INT_ENABLE);
}