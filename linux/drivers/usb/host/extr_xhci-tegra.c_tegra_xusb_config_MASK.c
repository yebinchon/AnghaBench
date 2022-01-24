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
struct tegra_xusb {TYPE_1__* soc; } ;
struct resource {int start; } ;
struct TYPE_2__ {scalar_t__ has_ipfs; } ;

/* Variables and functions */
 int IPFS_EN_FPCI ; 
 int IPFS_IP_INT_MASK ; 
 int /*<<< orphan*/  IPFS_XUSB_HOST_CLKGATE_HYSTERESIS_0 ; 
 int /*<<< orphan*/  IPFS_XUSB_HOST_CONFIGURATION_0 ; 
 int /*<<< orphan*/  IPFS_XUSB_HOST_INTR_MASK_0 ; 
 int XUSB_BASE_ADDR_MASK ; 
 int XUSB_BASE_ADDR_SHIFT ; 
 int XUSB_BUS_MASTER_EN ; 
 int /*<<< orphan*/  XUSB_CFG_1 ; 
 int /*<<< orphan*/  XUSB_CFG_4 ; 
 int XUSB_IO_SPACE_EN ; 
 int XUSB_MEM_SPACE_EN ; 
 int FUNC0 (struct tegra_xusb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_xusb*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct tegra_xusb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_xusb*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(struct tegra_xusb *tegra,
			      struct resource *regs)
{
	u32 value;

	if (tegra->soc->has_ipfs) {
		value = FUNC2(tegra, IPFS_XUSB_HOST_CONFIGURATION_0);
		value |= IPFS_EN_FPCI;
		FUNC3(tegra, value, IPFS_XUSB_HOST_CONFIGURATION_0);

		FUNC4(10, 20);
	}

	/* Program BAR0 space */
	value = FUNC0(tegra, XUSB_CFG_4);
	value &= ~(XUSB_BASE_ADDR_MASK << XUSB_BASE_ADDR_SHIFT);
	value |= regs->start & (XUSB_BASE_ADDR_MASK << XUSB_BASE_ADDR_SHIFT);
	FUNC1(tegra, value, XUSB_CFG_4);

	FUNC4(100, 200);

	/* Enable bus master */
	value = FUNC0(tegra, XUSB_CFG_1);
	value |= XUSB_IO_SPACE_EN | XUSB_MEM_SPACE_EN | XUSB_BUS_MASTER_EN;
	FUNC1(tegra, value, XUSB_CFG_1);

	if (tegra->soc->has_ipfs) {
		/* Enable interrupt assertion */
		value = FUNC2(tegra, IPFS_XUSB_HOST_INTR_MASK_0);
		value |= IPFS_IP_INT_MASK;
		FUNC3(tegra, value, IPFS_XUSB_HOST_INTR_MASK_0);

		/* Set hysteresis */
		FUNC3(tegra, 0x80, IPFS_XUSB_HOST_CLKGATE_HYSTERESIS_0);
	}
}