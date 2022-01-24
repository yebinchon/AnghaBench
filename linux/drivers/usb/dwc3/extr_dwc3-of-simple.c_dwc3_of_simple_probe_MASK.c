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
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct dwc3_of_simple {int need_reset; int pulse_resets; int num_clocks; int /*<<< orphan*/  resets; int /*<<< orphan*/  clks; struct device* dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int) ; 
 struct dwc3_of_simple* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct device_node*,char*) ; 
 int FUNC9 (struct device_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct dwc3_of_simple*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct dwc3_of_simple	*simple;
	struct device		*dev = &pdev->dev;
	struct device_node	*np = dev->of_node;

	int			ret;
	bool			shared_resets = false;

	simple = FUNC7(dev, sizeof(*simple), GFP_KERNEL);
	if (!simple)
		return -ENOMEM;

	FUNC11(pdev, simple);
	simple->dev = dev;

	/*
	 * Some controllers need to toggle the usb3-otg reset before trying to
	 * initialize the PHY, otherwise the PHY times out.
	 */
	if (FUNC8(np, "rockchip,rk3399-dwc3"))
		simple->need_reset = true;

	if (FUNC8(np, "amlogic,meson-axg-dwc3") ||
	    FUNC8(np, "amlogic,meson-gxl-dwc3")) {
		shared_resets = true;
		simple->pulse_resets = true;
	}

	simple->resets = FUNC10(np, shared_resets, true,
						    true);
	if (FUNC0(simple->resets)) {
		ret = FUNC1(simple->resets);
		FUNC6(dev, "failed to get device resets, err=%d\n", ret);
		return ret;
	}

	if (simple->pulse_resets) {
		ret = FUNC18(simple->resets);
		if (ret)
			goto err_resetc_put;
	} else {
		ret = FUNC16(simple->resets);
		if (ret)
			goto err_resetc_put;
	}

	ret = FUNC3(simple->dev, &simple->clks);
	if (ret < 0)
		goto err_resetc_assert;

	simple->num_clocks = ret;
	ret = FUNC4(simple->num_clocks, simple->clks);
	if (ret)
		goto err_resetc_assert;

	ret = FUNC9(np, NULL, NULL, dev);
	if (ret)
		goto err_clk_put;

	FUNC14(dev);
	FUNC12(dev);
	FUNC13(dev);

	return 0;

err_clk_put:
	FUNC2(simple->num_clocks, simple->clks);
	FUNC5(simple->num_clocks, simple->clks);

err_resetc_assert:
	if (!simple->pulse_resets)
		FUNC15(simple->resets);

err_resetc_put:
	FUNC17(simple->resets);
	return ret;
}