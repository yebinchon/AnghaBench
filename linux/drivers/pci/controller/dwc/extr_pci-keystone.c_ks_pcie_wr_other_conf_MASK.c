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
typedef  int u32 ;
struct pcie_port {scalar_t__ root_bus_nr; scalar_t__ va_cfg0_base; } ;
struct pci_bus {TYPE_1__* parent; int /*<<< orphan*/  number; } ;
struct keystone_pcie {int dummy; } ;
struct dw_pcie {int dummy; } ;
struct TYPE_2__ {scalar_t__ number; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CFG_SETUP ; 
 int CFG_TYPE1 ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int FUNC5 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct keystone_pcie*,int /*<<< orphan*/ ,int) ; 
 struct dw_pcie* FUNC7 (struct pcie_port*) ; 
 struct keystone_pcie* FUNC8 (struct dw_pcie*) ; 

__attribute__((used)) static int FUNC9(struct pcie_port *pp, struct pci_bus *bus,
				 unsigned int devfn, int where, int size,
				 u32 val)
{
	struct dw_pcie *pci = FUNC7(pp);
	struct keystone_pcie *ks_pcie = FUNC8(pci);
	u32 reg;

	reg = FUNC0(bus->number) | FUNC1(FUNC4(devfn)) |
		FUNC2(FUNC3(devfn));
	if (bus->parent->number != pp->root_bus_nr)
		reg |= CFG_TYPE1;
	FUNC6(ks_pcie, CFG_SETUP, reg);

	return FUNC5(pp->va_cfg0_base + where, size, val);
}