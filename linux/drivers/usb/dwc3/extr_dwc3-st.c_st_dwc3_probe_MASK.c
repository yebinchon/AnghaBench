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
struct st_dwc3 {struct regmap* rstc_pwrdn; struct regmap* rstc_rst; int /*<<< orphan*/  dr_mode; int /*<<< orphan*/  syscfg_reg_off; struct regmap* glue_base; struct regmap* regmap; struct device* dev; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct regmap {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,struct regmap*,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC4 (struct device*,struct resource*) ; 
 struct st_dwc3* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC6 (struct device*,char*) ; 
 struct regmap* FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*) ; 
 struct platform_device* FUNC9 (struct device_node*) ; 
 struct device_node* FUNC10 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*) ; 
 int FUNC12 (struct device_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct st_dwc3*) ; 
 int /*<<< orphan*/  FUNC16 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC17 (struct regmap*) ; 
 int FUNC18 (struct st_dwc3*) ; 
 int /*<<< orphan*/  FUNC19 (struct st_dwc3*) ; 
 struct regmap* FUNC20 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct st_dwc3 *dwc3_data;
	struct resource *res;
	struct device *dev = &pdev->dev;
	struct device_node *node = dev->of_node, *child;
	struct platform_device *child_pdev;
	struct regmap *regmap;
	int ret;

	dwc3_data = FUNC5(dev, sizeof(*dwc3_data), GFP_KERNEL);
	if (!dwc3_data)
		return -ENOMEM;

	res = FUNC14(pdev, IORESOURCE_MEM, "reg-glue");
	dwc3_data->glue_base = FUNC4(dev, res);
	if (FUNC0(dwc3_data->glue_base))
		return FUNC1(dwc3_data->glue_base);

	regmap = FUNC20(node, "st,syscfg");
	if (FUNC0(regmap))
		return FUNC1(regmap);

	dwc3_data->dev = dev;
	dwc3_data->regmap = regmap;

	res = FUNC14(pdev, IORESOURCE_MEM, "syscfg-reg");
	if (!res) {
		ret = -ENXIO;
		goto undo_platform_dev_alloc;
	}

	dwc3_data->syscfg_reg_off = res->start;

	FUNC3(&pdev->dev, "glue-logic addr 0x%pK, syscfg-reg offset 0x%x\n",
		 dwc3_data->glue_base, dwc3_data->syscfg_reg_off);

	dwc3_data->rstc_pwrdn =
		FUNC6(dev, "powerdown");
	if (FUNC0(dwc3_data->rstc_pwrdn)) {
		FUNC2(&pdev->dev, "could not get power controller\n");
		ret = FUNC1(dwc3_data->rstc_pwrdn);
		goto undo_platform_dev_alloc;
	}

	/* Manage PowerDown */
	FUNC17(dwc3_data->rstc_pwrdn);

	dwc3_data->rstc_rst =
		FUNC7(dev, "softreset");
	if (FUNC0(dwc3_data->rstc_rst)) {
		FUNC2(&pdev->dev, "could not get reset controller\n");
		ret = FUNC1(dwc3_data->rstc_rst);
		goto undo_powerdown;
	}

	/* Manage SoftReset */
	FUNC17(dwc3_data->rstc_rst);

	child = FUNC10(node, "dwc3");
	if (!child) {
		FUNC2(&pdev->dev, "failed to find dwc3 core node\n");
		ret = -ENODEV;
		goto err_node_put;
	}

	/* Allocate and initialize the core */
	ret = FUNC12(node, NULL, NULL, dev);
	if (ret) {
		FUNC2(dev, "failed to add dwc3 core\n");
		goto err_node_put;
	}

	child_pdev = FUNC9(child);
	if (!child_pdev) {
		FUNC2(dev, "failed to find dwc3 core device\n");
		ret = -ENODEV;
		goto err_node_put;
	}

	dwc3_data->dr_mode = FUNC21(&child_pdev->dev);
	FUNC11(child);
	FUNC8(child_pdev);

	/*
	 * Configure the USB port as device or host according to the static
	 * configuration passed from DT.
	 * DRD is the only mode currently supported so this will be enhanced
	 * as soon as OTG is available.
	 */
	ret = FUNC18(dwc3_data);
	if (ret) {
		FUNC2(dev, "drd initialisation failed\n");
		goto undo_softreset;
	}

	/* ST glue logic init */
	FUNC19(dwc3_data);

	FUNC15(pdev, dwc3_data);
	return 0;

err_node_put:
	FUNC11(child);
undo_softreset:
	FUNC16(dwc3_data->rstc_rst);
undo_powerdown:
	FUNC16(dwc3_data->rstc_pwrdn);
undo_platform_dev_alloc:
	FUNC13(pdev);
	return ret;
}