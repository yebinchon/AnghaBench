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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct arche_apb_ctrl_drvdata {int spi_en_polarity_high; void* pin_default; void* pinctrl; void* vio; void* vcore; void* pwrdn; void* clk_en; void* pwroff; void* boot_ret; void* resetn; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 void* FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct device*) ; 
 void* FUNC7 (struct device*,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC9 (void*,char*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev,
				     struct arche_apb_ctrl_drvdata *apb)
{
	struct device *dev = &pdev->dev;
	int ret;

	apb->resetn = FUNC4(dev, "reset", GPIOD_OUT_LOW);
	if (FUNC0(apb->resetn)) {
		ret = FUNC1(apb->resetn);
		FUNC2(dev, "Failed requesting reset GPIO: %d\n", ret);
		return ret;
	}

	apb->boot_ret = FUNC4(dev, "boot-ret", GPIOD_OUT_LOW);
	if (FUNC0(apb->boot_ret)) {
		ret = FUNC1(apb->boot_ret);
		FUNC2(dev, "Failed requesting bootret GPIO: %d\n", ret);
		return ret;
	}

	/* It's not mandatory to support power management interface */
	apb->pwroff = FUNC5(dev, "pwr-off", GPIOD_IN);
	if (FUNC0(apb->pwroff)) {
		ret = FUNC1(apb->pwroff);
		FUNC2(dev, "Failed requesting pwroff_n GPIO: %d\n", ret);
		return ret;
	}

	/* Do not make clock mandatory as of now (for DB3) */
	apb->clk_en = FUNC5(dev, "clock-en", GPIOD_OUT_LOW);
	if (FUNC0(apb->clk_en)) {
		ret = FUNC1(apb->clk_en);
		FUNC2(dev, "Failed requesting APB clock en GPIO: %d\n", ret);
		return ret;
	}

	apb->pwrdn = FUNC4(dev, "pwr-down", GPIOD_OUT_LOW);
	if (FUNC0(apb->pwrdn)) {
		ret = FUNC1(apb->pwrdn);
		FUNC3(dev, "Failed requesting power down GPIO: %d\n", ret);
		return ret;
	}

	/* Regulators are optional, as we may have fixed supply coming in */
	apb->vcore = FUNC7(dev, "vcore");
	if (FUNC0(apb->vcore))
		FUNC3(dev, "no core regulator found\n");

	apb->vio = FUNC7(dev, "vio");
	if (FUNC0(apb->vio))
		FUNC3(dev, "no IO regulator found\n");

	apb->pinctrl = FUNC6(&pdev->dev);
	if (FUNC0(apb->pinctrl)) {
		FUNC2(&pdev->dev, "could not get pinctrl handle\n");
		return FUNC1(apb->pinctrl);
	}
	apb->pin_default = FUNC9(apb->pinctrl, "default");
	if (FUNC0(apb->pin_default)) {
		FUNC2(&pdev->dev, "could not get default pin state\n");
		return FUNC1(apb->pin_default);
	}

	/* Only applicable for platform >= V2 */
	if (FUNC8(pdev->dev.of_node, "gb,spi-en-active-high"))
		apb->spi_en_polarity_high = true;

	return 0;
}