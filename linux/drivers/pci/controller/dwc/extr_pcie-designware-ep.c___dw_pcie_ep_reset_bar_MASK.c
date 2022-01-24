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
typedef  scalar_t__ u32 ;
struct dw_pcie {int dummy; } ;
typedef  enum pci_barno { ____Placeholder_pci_barno } pci_barno ;

/* Variables and functions */
 scalar_t__ PCI_BASE_ADDRESS_0 ; 
 int PCI_BASE_ADDRESS_MEM_TYPE_64 ; 
 int /*<<< orphan*/  FUNC0 (struct dw_pcie*) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_pcie*) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_pcie*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_pcie*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC4(struct dw_pcie *pci, enum pci_barno bar,
				   int flags)
{
	u32 reg;

	reg = PCI_BASE_ADDRESS_0 + (4 * bar);
	FUNC1(pci);
	FUNC3(pci, reg, 0x0);
	FUNC2(pci, reg, 0x0);
	if (flags & PCI_BASE_ADDRESS_MEM_TYPE_64) {
		FUNC3(pci, reg + 4, 0x0);
		FUNC2(pci, reg + 4, 0x0);
	}
	FUNC0(pci);
}