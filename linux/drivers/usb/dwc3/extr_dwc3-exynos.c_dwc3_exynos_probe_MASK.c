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
struct dwc3_exynos_driverdata {int num_clks; size_t suspend_clk_idx; scalar_t__ clk_names; } ;
struct dwc3_exynos {int num_clks; char const** clk_names; size_t suspend_clk_idx; void** clks; void* vdd33; void* vdd10; struct device* dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 void* FUNC5 (struct device*,char const*) ; 
 struct dwc3_exynos* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct device*,char*) ; 
 struct dwc3_exynos_driverdata* FUNC8 (struct device*) ; 
 int FUNC9 (struct device_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct dwc3_exynos*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int FUNC12 (void*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct dwc3_exynos	*exynos;
	struct device		*dev = &pdev->dev;
	struct device_node	*node = dev->of_node;
	const struct dwc3_exynos_driverdata *driver_data;
	int			i, ret;

	exynos = FUNC6(dev, sizeof(*exynos), GFP_KERNEL);
	if (!exynos)
		return -ENOMEM;

	driver_data = FUNC8(dev);
	exynos->dev = dev;
	exynos->num_clks = driver_data->num_clks;
	exynos->clk_names = (const char **)driver_data->clk_names;
	exynos->suspend_clk_idx = driver_data->suspend_clk_idx;

	FUNC10(pdev, exynos);

	for (i = 0; i < exynos->num_clks; i++) {
		exynos->clks[i] = FUNC5(dev, exynos->clk_names[i]);
		if (FUNC0(exynos->clks[i])) {
			FUNC4(dev, "failed to get clock: %s\n",
				exynos->clk_names[i]);
			return FUNC1(exynos->clks[i]);
		}
	}

	for (i = 0; i < exynos->num_clks; i++) {
		ret = FUNC3(exynos->clks[i]);
		if (ret) {
			while (i-- > 0)
				FUNC2(exynos->clks[i]);
			return ret;
		}
	}

	if (exynos->suspend_clk_idx >= 0)
		FUNC3(exynos->clks[exynos->suspend_clk_idx]);

	exynos->vdd33 = FUNC7(dev, "vdd33");
	if (FUNC0(exynos->vdd33)) {
		ret = FUNC1(exynos->vdd33);
		goto vdd33_err;
	}
	ret = FUNC12(exynos->vdd33);
	if (ret) {
		FUNC4(dev, "Failed to enable VDD33 supply\n");
		goto vdd33_err;
	}

	exynos->vdd10 = FUNC7(dev, "vdd10");
	if (FUNC0(exynos->vdd10)) {
		ret = FUNC1(exynos->vdd10);
		goto vdd10_err;
	}
	ret = FUNC12(exynos->vdd10);
	if (ret) {
		FUNC4(dev, "Failed to enable VDD10 supply\n");
		goto vdd10_err;
	}

	if (node) {
		ret = FUNC9(node, NULL, NULL, dev);
		if (ret) {
			FUNC4(dev, "failed to add dwc3 core\n");
			goto populate_err;
		}
	} else {
		FUNC4(dev, "no device node, failed to add dwc3 core\n");
		ret = -ENODEV;
		goto populate_err;
	}

	return 0;

populate_err:
	FUNC11(exynos->vdd10);
vdd10_err:
	FUNC11(exynos->vdd33);
vdd33_err:
	for (i = exynos->num_clks - 1; i >= 0; i--)
		FUNC2(exynos->clks[i]);

	if (exynos->suspend_clk_idx >= 0)
		FUNC2(exynos->clks[exynos->suspend_clk_idx]);

	return ret;
}