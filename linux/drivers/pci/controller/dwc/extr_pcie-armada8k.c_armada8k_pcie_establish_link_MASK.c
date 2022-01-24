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
struct dw_pcie {int /*<<< orphan*/  dev; } ;
struct armada8k_pcie {struct dw_pcie* pci; } ;

/* Variables and functions */
 int ARCACHE_DEFAULT_VALUE ; 
 int AWCACHE_DEFAULT_VALUE ; 
 int AX_USER_DOMAIN_MASK ; 
 int AX_USER_DOMAIN_SHIFT ; 
 int DOMAIN_OUTER_SHAREABLE ; 
 int PCIE_APP_LTSSM_EN ; 
 int /*<<< orphan*/  PCIE_ARCACHE_TRC_REG ; 
 int /*<<< orphan*/  PCIE_ARUSER_REG ; 
 int /*<<< orphan*/  PCIE_AWCACHE_TRC_REG ; 
 int /*<<< orphan*/  PCIE_AWUSER_REG ; 
 int PCIE_DEVICE_TYPE_MASK ; 
 int PCIE_DEVICE_TYPE_RC ; 
 int PCIE_DEVICE_TYPE_SHIFT ; 
 int /*<<< orphan*/  PCIE_GLOBAL_CONTROL_REG ; 
 int /*<<< orphan*/  PCIE_GLOBAL_INT_MASK1_REG ; 
 int PCIE_INT_A_ASSERT_MASK ; 
 int PCIE_INT_B_ASSERT_MASK ; 
 int PCIE_INT_C_ASSERT_MASK ; 
 int PCIE_INT_D_ASSERT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_pcie*) ; 
 int FUNC2 (struct dw_pcie*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct dw_pcie*) ; 
 int /*<<< orphan*/  FUNC4 (struct dw_pcie*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct armada8k_pcie *pcie)
{
	struct dw_pcie *pci = pcie->pci;
	u32 reg;

	if (!FUNC1(pci)) {
		/* Disable LTSSM state machine to enable configuration */
		reg = FUNC2(pci, PCIE_GLOBAL_CONTROL_REG);
		reg &= ~(PCIE_APP_LTSSM_EN);
		FUNC4(pci, PCIE_GLOBAL_CONTROL_REG, reg);
	}

	/* Set the device to root complex mode */
	reg = FUNC2(pci, PCIE_GLOBAL_CONTROL_REG);
	reg &= ~(PCIE_DEVICE_TYPE_MASK << PCIE_DEVICE_TYPE_SHIFT);
	reg |= PCIE_DEVICE_TYPE_RC << PCIE_DEVICE_TYPE_SHIFT;
	FUNC4(pci, PCIE_GLOBAL_CONTROL_REG, reg);

	/* Set the PCIe master AxCache attributes */
	FUNC4(pci, PCIE_ARCACHE_TRC_REG, ARCACHE_DEFAULT_VALUE);
	FUNC4(pci, PCIE_AWCACHE_TRC_REG, AWCACHE_DEFAULT_VALUE);

	/* Set the PCIe master AxDomain attributes */
	reg = FUNC2(pci, PCIE_ARUSER_REG);
	reg &= ~(AX_USER_DOMAIN_MASK << AX_USER_DOMAIN_SHIFT);
	reg |= DOMAIN_OUTER_SHAREABLE << AX_USER_DOMAIN_SHIFT;
	FUNC4(pci, PCIE_ARUSER_REG, reg);

	reg = FUNC2(pci, PCIE_AWUSER_REG);
	reg &= ~(AX_USER_DOMAIN_MASK << AX_USER_DOMAIN_SHIFT);
	reg |= DOMAIN_OUTER_SHAREABLE << AX_USER_DOMAIN_SHIFT;
	FUNC4(pci, PCIE_AWUSER_REG, reg);

	/* Enable INT A-D interrupts */
	reg = FUNC2(pci, PCIE_GLOBAL_INT_MASK1_REG);
	reg |= PCIE_INT_A_ASSERT_MASK | PCIE_INT_B_ASSERT_MASK |
	       PCIE_INT_C_ASSERT_MASK | PCIE_INT_D_ASSERT_MASK;
	FUNC4(pci, PCIE_GLOBAL_INT_MASK1_REG, reg);

	if (!FUNC1(pci)) {
		/* Configuration done. Start LTSSM */
		reg = FUNC2(pci, PCIE_GLOBAL_CONTROL_REG);
		reg |= PCIE_APP_LTSSM_EN;
		FUNC4(pci, PCIE_GLOBAL_CONTROL_REG, reg);
	}

	/* Wait until the link becomes active again */
	if (FUNC3(pci))
		FUNC0(pci->dev, "Link not up after reconfiguration\n");
}