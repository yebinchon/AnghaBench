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
typedef  scalar_t__ u32 ;
struct rockchip_pcie {scalar_t__ root_bus_nr; scalar_t__ reg_base; } ;
struct pci_bus {TYPE_1__* parent; int /*<<< orphan*/  number; } ;
struct TYPE_2__ {scalar_t__ number; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXI_WRAPPER_TYPE0_CFG ; 
 int /*<<< orphan*/  AXI_WRAPPER_TYPE1_CFG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int PCIBIOS_BAD_REGISTER_NUMBER ; 
 int PCIBIOS_SUCCESSFUL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct rockchip_pcie*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct rockchip_pcie *rockchip,
				       struct pci_bus *bus, u32 devfn,
				       int where, int size, u32 *val)
{
	u32 busdev;

	busdev = FUNC1(bus->number, FUNC3(devfn),
				FUNC2(devfn), where);

	if (!FUNC0(busdev, size)) {
		*val = 0;
		return PCIBIOS_BAD_REGISTER_NUMBER;
	}

	if (bus->parent->number == rockchip->root_bus_nr)
		FUNC7(rockchip,
						AXI_WRAPPER_TYPE0_CFG);
	else
		FUNC7(rockchip,
						AXI_WRAPPER_TYPE1_CFG);

	if (size == 4) {
		*val = FUNC5(rockchip->reg_base + busdev);
	} else if (size == 2) {
		*val = FUNC6(rockchip->reg_base + busdev);
	} else if (size == 1) {
		*val = FUNC4(rockchip->reg_base + busdev);
	} else {
		*val = 0;
		return PCIBIOS_BAD_REGISTER_NUMBER;
	}
	return PCIBIOS_SUCCESSFUL;
}