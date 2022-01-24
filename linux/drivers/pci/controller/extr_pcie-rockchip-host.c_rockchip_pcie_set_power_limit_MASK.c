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
struct rockchip_pcie {int /*<<< orphan*/  dev; int /*<<< orphan*/  vpcie3v3; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCIE_RC_CONFIG_DCR ; 
 int PCIE_RC_CONFIG_DCR_CPLS_SHIFT ; 
 int PCIE_RC_CONFIG_DCR_CSPL_LIMIT ; 
 int PCIE_RC_CONFIG_DCR_CSPL_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rockchip_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rockchip_pcie*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct rockchip_pcie *rockchip)
{
	int curr;
	u32 status, scale, power;

	if (FUNC0(rockchip->vpcie3v3))
		return;

	/*
	 * Set RC's captured slot power limit and scale if
	 * vpcie3v3 available. The default values are both zero
	 * which means the software should set these two according
	 * to the actual power supply.
	 */
	curr = FUNC2(rockchip->vpcie3v3);
	if (curr <= 0)
		return;

	scale = 3; /* 0.001x */
	curr = curr / 1000; /* convert to mA */
	power = (curr * 3300) / 1000; /* milliwatt */
	while (power > PCIE_RC_CONFIG_DCR_CSPL_LIMIT) {
		if (!scale) {
			FUNC1(rockchip->dev, "invalid power supply\n");
			return;
		}
		scale--;
		power = power / 10;
	}

	status = FUNC3(rockchip, PCIE_RC_CONFIG_DCR);
	status |= (power << PCIE_RC_CONFIG_DCR_CSPL_SHIFT) |
		  (scale << PCIE_RC_CONFIG_DCR_CPLS_SHIFT);
	FUNC4(rockchip, status, PCIE_RC_CONFIG_DCR);
}