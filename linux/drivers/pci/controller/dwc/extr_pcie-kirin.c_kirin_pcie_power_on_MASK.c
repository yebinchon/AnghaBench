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
struct kirin_pcie {int /*<<< orphan*/  gpio_id_reset; int /*<<< orphan*/  sysctrl; int /*<<< orphan*/  crgctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRGCTRL_PCIE_ASSERT_BIT ; 
 int /*<<< orphan*/  CRGCTRL_PCIE_ASSERT_OFFSET ; 
 int /*<<< orphan*/  PERST_2_ACCESS_MAX ; 
 int /*<<< orphan*/  PERST_2_ACCESS_MIN ; 
 int /*<<< orphan*/  REF_2_PERST_MAX ; 
 int /*<<< orphan*/  REF_2_PERST_MIN ; 
 int /*<<< orphan*/  SCTRL_PCIE_CMOS_BIT ; 
 int /*<<< orphan*/  SCTRL_PCIE_CMOS_OFFSET ; 
 int /*<<< orphan*/  SCTRL_PCIE_HPCLK_BIT ; 
 int /*<<< orphan*/  SCTRL_PCIE_HPCLK_OFFSET ; 
 int /*<<< orphan*/  SCTRL_PCIE_ISO_BIT ; 
 int /*<<< orphan*/  SCTRL_PCIE_ISO_OFFSET ; 
 int /*<<< orphan*/  TIME_CMOS_MAX ; 
 int /*<<< orphan*/  TIME_CMOS_MIN ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct kirin_pcie*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kirin_pcie*) ; 
 int FUNC4 (struct kirin_pcie*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct kirin_pcie *kirin_pcie)
{
	int ret;

	/* Power supply for Host */
	FUNC5(kirin_pcie->sysctrl,
		     SCTRL_PCIE_CMOS_OFFSET, SCTRL_PCIE_CMOS_BIT);
	FUNC6(TIME_CMOS_MIN, TIME_CMOS_MAX);
	FUNC3(kirin_pcie);

	ret = FUNC2(kirin_pcie, true);
	if (ret)
		return ret;

	/* ISO disable, PCIeCtrl, PHY assert and clk gate clear */
	FUNC5(kirin_pcie->sysctrl,
		     SCTRL_PCIE_ISO_OFFSET, SCTRL_PCIE_ISO_BIT);
	FUNC5(kirin_pcie->crgctrl,
		     CRGCTRL_PCIE_ASSERT_OFFSET, CRGCTRL_PCIE_ASSERT_BIT);
	FUNC5(kirin_pcie->sysctrl,
		     SCTRL_PCIE_HPCLK_OFFSET, SCTRL_PCIE_HPCLK_BIT);

	ret = FUNC4(kirin_pcie);
	if (ret)
		goto close_clk;

	/* perst assert Endpoint */
	if (!FUNC1(kirin_pcie->gpio_id_reset, "pcie_perst")) {
		FUNC6(REF_2_PERST_MIN, REF_2_PERST_MAX);
		ret = FUNC0(kirin_pcie->gpio_id_reset, 1);
		if (ret)
			goto close_clk;
		FUNC6(PERST_2_ACCESS_MIN, PERST_2_ACCESS_MAX);

		return 0;
	}

close_clk:
	FUNC2(kirin_pcie, false);
	return ret;
}