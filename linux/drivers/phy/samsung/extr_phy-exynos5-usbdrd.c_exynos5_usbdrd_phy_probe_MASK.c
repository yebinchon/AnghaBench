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
typedef  int /*<<< orphan*/  u32 ;
struct resource {int dummy; } ;
struct regmap {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
typedef  struct regmap phy_provider ;
typedef  struct regmap phy ;
struct exynos5_usbdrd_phy_drvdata {int /*<<< orphan*/ * phy_cfg; int /*<<< orphan*/  pmu_offset_usbdrd0_phy; int /*<<< orphan*/  pmu_offset_usbdrd1_phy; } ;
struct exynos5_usbdrd_phy {struct device* dev; TYPE_1__* phys; struct regmap* vbus_boost; struct regmap* vbus; struct exynos5_usbdrd_phy_drvdata const* drv_data; struct regmap* reg_phy; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int index; int /*<<< orphan*/ * phy_cfg; int /*<<< orphan*/  pmu_offset; struct regmap* reg_pmu; struct regmap* phy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int EXYNOS5_DRDPHYS_NUM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct exynos5_usbdrd_phy*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 struct regmap* FUNC7 (struct device*,struct resource*) ; 
 struct exynos5_usbdrd_phy* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC9 (struct device*,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC10 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC11 (struct device*,char*) ; 
 int FUNC12 (struct exynos5_usbdrd_phy*) ; 
 int /*<<< orphan*/  exynos5_usbdrd_phy_ops ; 
 int /*<<< orphan*/  exynos5_usbdrd_phy_xlate ; 
 int FUNC13 (struct device_node*,char*) ; 
 struct exynos5_usbdrd_phy_drvdata* FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct regmap*,TYPE_1__*) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC17 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *node = dev->of_node;
	struct exynos5_usbdrd_phy *phy_drd;
	struct phy_provider *phy_provider;
	struct resource *res;
	const struct exynos5_usbdrd_phy_drvdata *drv_data;
	struct regmap *reg_pmu;
	u32 pmu_offset;
	int i, ret;
	int channel;

	phy_drd = FUNC8(dev, sizeof(*phy_drd), GFP_KERNEL);
	if (!phy_drd)
		return -ENOMEM;

	FUNC4(dev, phy_drd);
	phy_drd->dev = dev;

	res = FUNC16(pdev, IORESOURCE_MEM, 0);
	phy_drd->reg_phy = FUNC7(dev, res);
	if (FUNC0(phy_drd->reg_phy))
		return FUNC1(phy_drd->reg_phy);

	drv_data = FUNC14(dev);
	if (!drv_data)
		return -EINVAL;

	phy_drd->drv_data = drv_data;

	ret = FUNC12(phy_drd);
	if (ret) {
		FUNC3(dev, "Failed to initialize clocks\n");
		return ret;
	}

	reg_pmu = FUNC17(dev->of_node,
						   "samsung,pmu-syscon");
	if (FUNC0(reg_pmu)) {
		FUNC3(dev, "Failed to lookup PMU regmap\n");
		return FUNC1(reg_pmu);
	}

	/*
	 * Exynos5420 SoC has multiple channels for USB 3.0 PHY, with
	 * each having separate power control registers.
	 * 'channel' facilitates to set such registers.
	 */
	channel = FUNC13(node, "usbdrdphy");
	if (channel < 0)
		FUNC2(dev, "Not a multi-controller usbdrd phy\n");

	switch (channel) {
	case 1:
		pmu_offset = phy_drd->drv_data->pmu_offset_usbdrd1_phy;
		break;
	case 0:
	default:
		pmu_offset = phy_drd->drv_data->pmu_offset_usbdrd0_phy;
		break;
	}

	/* Get Vbus regulators */
	phy_drd->vbus = FUNC11(dev, "vbus");
	if (FUNC0(phy_drd->vbus)) {
		ret = FUNC1(phy_drd->vbus);
		if (ret == -EPROBE_DEFER)
			return ret;

		FUNC6(dev, "Failed to get VBUS supply regulator\n");
		phy_drd->vbus = NULL;
	}

	phy_drd->vbus_boost = FUNC11(dev, "vbus-boost");
	if (FUNC0(phy_drd->vbus_boost)) {
		ret = FUNC1(phy_drd->vbus_boost);
		if (ret == -EPROBE_DEFER)
			return ret;

		FUNC6(dev, "Failed to get VBUS boost supply regulator\n");
		phy_drd->vbus_boost = NULL;
	}

	FUNC5(dev, "Creating usbdrd_phy phy\n");

	for (i = 0; i < EXYNOS5_DRDPHYS_NUM; i++) {
		struct phy *phy = FUNC10(dev, NULL,
						  &exynos5_usbdrd_phy_ops);
		if (FUNC0(phy)) {
			FUNC3(dev, "Failed to create usbdrd_phy phy\n");
			return FUNC1(phy);
		}

		phy_drd->phys[i].phy = phy;
		phy_drd->phys[i].index = i;
		phy_drd->phys[i].reg_pmu = reg_pmu;
		phy_drd->phys[i].pmu_offset = pmu_offset;
		phy_drd->phys[i].phy_cfg = &drv_data->phy_cfg[i];
		FUNC15(phy, &phy_drd->phys[i]);
	}

	phy_provider = FUNC9(dev,
						     exynos5_usbdrd_phy_xlate);
	if (FUNC0(phy_provider)) {
		FUNC3(phy_drd->dev, "Failed to register phy provider\n");
		return FUNC1(phy_provider);
	}

	return 0;
}