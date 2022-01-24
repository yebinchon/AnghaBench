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
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct hdmi_wp_data {int dummy; } ;
struct hdmi_pll_data {int /*<<< orphan*/  base; struct hdmi_wp_data* wp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct resource*) ; 
 int FUNC4 (struct platform_device*,struct hdmi_pll_data*) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 

int FUNC6(struct platform_device *pdev, struct hdmi_pll_data *pll,
	struct hdmi_wp_data *wp)
{
	int r;
	struct resource *res;

	pll->wp = wp;

	res = FUNC5(pdev, IORESOURCE_MEM, "pll");
	if (!res) {
		FUNC0("can't get PLL mem resource\n");
		return -EINVAL;
	}

	pll->base = FUNC3(&pdev->dev, res);
	if (FUNC1(pll->base)) {
		FUNC0("can't ioremap PLLCTRL\n");
		return FUNC2(pll->base);
	}

	r = FUNC4(pdev, pll);
	if (r) {
		FUNC0("failed to init HDMI PLL\n");
		return r;
	}

	return 0;
}