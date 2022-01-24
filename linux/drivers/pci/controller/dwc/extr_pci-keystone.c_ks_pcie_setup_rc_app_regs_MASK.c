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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct pcie_port {TYPE_1__* mem; } ;
struct keystone_pcie {int num_viewport; scalar_t__ is_am6; struct dw_pcie* pci; } ;
struct dw_pcie {struct pcie_port pp; } ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_STATUS ; 
 int OB_ENABLEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  OB_SIZE ; 
 scalar_t__ OB_WIN_SIZE ; 
 int OB_XLAT_EN_VAL ; 
 int /*<<< orphan*/  PCI_BASE_ADDRESS_0 ; 
 int /*<<< orphan*/  PCI_BASE_ADDRESS_1 ; 
 int /*<<< orphan*/  FUNC2 (struct dw_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (struct keystone_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct keystone_pcie*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct keystone_pcie*) ; 
 int /*<<< orphan*/  FUNC7 (struct keystone_pcie*) ; 
 int FUNC8 (scalar_t__) ; 
 int FUNC9 (scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct keystone_pcie *ks_pcie)
{
	u32 val;
	u32 num_viewport = ks_pcie->num_viewport;
	struct dw_pcie *pci = ks_pcie->pci;
	struct pcie_port *pp = &pci->pp;
	u64 start = pp->mem->start;
	u64 end = pp->mem->end;
	int i;

	/* Disable BARs for inbound access */
	FUNC7(ks_pcie);
	FUNC2(pci, PCI_BASE_ADDRESS_0, 0);
	FUNC2(pci, PCI_BASE_ADDRESS_1, 0);
	FUNC6(ks_pcie);

	if (ks_pcie->is_am6)
		return;

	val = FUNC3(OB_WIN_SIZE);
	FUNC5(ks_pcie, OB_SIZE, val);

	/* Using Direct 1:1 mapping of RC <-> PCI memory space */
	for (i = 0; i < num_viewport && (start < end); i++) {
		FUNC5(ks_pcie, FUNC1(i),
				   FUNC8(start) | OB_ENABLEN);
		FUNC5(ks_pcie, FUNC0(i),
				   FUNC9(start));
		start += OB_WIN_SIZE;
	}

	val = FUNC4(ks_pcie, CMD_STATUS);
	val |= OB_XLAT_EN_VAL;
	FUNC5(ks_pcie, CMD_STATUS, val);
}