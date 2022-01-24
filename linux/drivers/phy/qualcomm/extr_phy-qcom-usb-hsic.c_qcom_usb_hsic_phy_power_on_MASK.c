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
struct ulpi {int dummy; } ;
struct qcom_usb_hsic_phy {int /*<<< orphan*/  phy_clk; int /*<<< orphan*/  cal_clk; int /*<<< orphan*/  cal_sleep_clk; int /*<<< orphan*/  pctl; struct ulpi* ulpi; } ;
struct pinctrl_state {int dummy; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pinctrl_state*) ; 
 int /*<<< orphan*/  PINCTRL_STATE_DEFAULT ; 
 int FUNC1 (struct pinctrl_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ULPI_HSIC_CFG ; 
 int /*<<< orphan*/  ULPI_HSIC_IO_CAL ; 
 int /*<<< orphan*/  ULPI_IFC_CTRL ; 
 int ULPI_IFC_CTRL_AUTORESUME ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct qcom_usb_hsic_phy* FUNC6 (struct phy*) ; 
 struct pinctrl_state* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct pinctrl_state*) ; 
 int FUNC9 (struct ulpi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct phy *phy)
{
	struct qcom_usb_hsic_phy *uphy = FUNC6(phy);
	struct ulpi *ulpi = uphy->ulpi;
	struct pinctrl_state *pins_default;
	int ret;

	ret = FUNC5(uphy->phy_clk);
	if (ret)
		return ret;

	ret = FUNC5(uphy->cal_clk);
	if (ret)
		goto err_cal;

	ret = FUNC5(uphy->cal_sleep_clk);
	if (ret)
		goto err_sleep;

	/* Set periodic calibration interval to ~2.048sec in HSIC_IO_CAL_REG */
	ret = FUNC9(ulpi, ULPI_HSIC_IO_CAL, 0xff);
	if (ret)
		goto err_ulpi;

	/* Enable periodic IO calibration in HSIC_CFG register */
	ret = FUNC9(ulpi, ULPI_HSIC_CFG, 0xa8);
	if (ret)
		goto err_ulpi;

	/* Configure pins for HSIC functionality */
	pins_default = FUNC7(uphy->pctl, PINCTRL_STATE_DEFAULT);
	if (FUNC0(pins_default))
		return FUNC1(pins_default);

	ret = FUNC8(uphy->pctl, pins_default);
	if (ret)
		goto err_ulpi;

	 /* Enable HSIC mode in HSIC_CFG register */
	ret = FUNC9(ulpi, FUNC3(ULPI_HSIC_CFG), 0x01);
	if (ret)
		goto err_ulpi;

	/* Disable auto-resume */
	ret = FUNC9(ulpi, FUNC2(ULPI_IFC_CTRL),
			 ULPI_IFC_CTRL_AUTORESUME);
	if (ret)
		goto err_ulpi;

	return ret;
err_ulpi:
	FUNC4(uphy->cal_sleep_clk);
err_sleep:
	FUNC4(uphy->cal_clk);
err_cal:
	FUNC4(uphy->phy_clk);
	return ret;
}