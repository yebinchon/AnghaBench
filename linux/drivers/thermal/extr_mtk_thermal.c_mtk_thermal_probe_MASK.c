#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct thermal_zone_device {int dummy; } ;
struct resource {int dummy; } ;
struct TYPE_11__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct mtk_thermal {struct thermal_zone_device* clk_auxadc; struct thermal_zone_device* clk_peri_therm; TYPE_1__* conf; TYPE_2__* dev; int /*<<< orphan*/  lock; struct thermal_zone_device* thermal_base; } ;
struct device_node {int dummy; } ;
struct TYPE_10__ {int num_controller; int num_banks; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct thermal_zone_device*) ; 
 scalar_t__ OF_BAD_ADDR ; 
 int FUNC1 (struct thermal_zone_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct thermal_zone_device*) ; 
 int FUNC3 (struct thermal_zone_device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,...) ; 
 int FUNC5 (TYPE_2__*) ; 
 void* FUNC6 (TYPE_2__*,char*) ; 
 struct thermal_zone_device* FUNC7 (TYPE_2__*,struct resource*) ; 
 struct mtk_thermal* FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 struct thermal_zone_device* FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,struct mtk_thermal*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_2__*,struct mtk_thermal*) ; 
 int /*<<< orphan*/  FUNC11 (struct mtk_thermal*,int,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  mtk_thermal_ops ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC13 (TYPE_2__*) ; 
 scalar_t__ FUNC14 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC15 (struct device_node*) ; 
 struct device_node* FUNC16 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC17 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,struct mtk_thermal*) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	int ret, i, ctrl_id;
	struct device_node *auxadc, *apmixedsys, *np = pdev->dev.of_node;
	struct mtk_thermal *mt;
	struct resource *res;
	u64 auxadc_phys_base, apmixed_phys_base;
	struct thermal_zone_device *tzdev;

	mt = FUNC8(&pdev->dev, sizeof(*mt), GFP_KERNEL);
	if (!mt)
		return -ENOMEM;

	mt->conf = FUNC13(&pdev->dev);

	mt->clk_peri_therm = FUNC6(&pdev->dev, "therm");
	if (FUNC0(mt->clk_peri_therm))
		return FUNC1(mt->clk_peri_therm);

	mt->clk_auxadc = FUNC6(&pdev->dev, "auxadc");
	if (FUNC0(mt->clk_auxadc))
		return FUNC1(mt->clk_auxadc);

	res = FUNC17(pdev, IORESOURCE_MEM, 0);
	mt->thermal_base = FUNC7(&pdev->dev, res);
	if (FUNC0(mt->thermal_base))
		return FUNC1(mt->thermal_base);

	ret = FUNC10(&pdev->dev, mt);
	if (ret)
		return ret;

	FUNC12(&mt->lock);

	mt->dev = &pdev->dev;

	auxadc = FUNC16(np, "mediatek,auxadc", 0);
	if (!auxadc) {
		FUNC4(&pdev->dev, "missing auxadc node\n");
		return -ENODEV;
	}

	auxadc_phys_base = FUNC14(auxadc);

	FUNC15(auxadc);

	if (auxadc_phys_base == OF_BAD_ADDR) {
		FUNC4(&pdev->dev, "Can't get auxadc phys address\n");
		return -EINVAL;
	}

	apmixedsys = FUNC16(np, "mediatek,apmixedsys", 0);
	if (!apmixedsys) {
		FUNC4(&pdev->dev, "missing apmixedsys node\n");
		return -ENODEV;
	}

	apmixed_phys_base = FUNC14(apmixedsys);

	FUNC15(apmixedsys);

	if (apmixed_phys_base == OF_BAD_ADDR) {
		FUNC4(&pdev->dev, "Can't get auxadc phys address\n");
		return -EINVAL;
	}

	ret = FUNC5(&pdev->dev);
	if (ret)
		return ret;

	ret = FUNC3(mt->clk_auxadc);
	if (ret) {
		FUNC4(&pdev->dev, "Can't enable auxadc clk: %d\n", ret);
		return ret;
	}

	ret = FUNC3(mt->clk_peri_therm);
	if (ret) {
		FUNC4(&pdev->dev, "Can't enable peri clk: %d\n", ret);
		goto err_disable_clk_auxadc;
	}

	for (ctrl_id = 0; ctrl_id < mt->conf->num_controller ; ctrl_id++)
		for (i = 0; i < mt->conf->num_banks; i++)
			FUNC11(mt, i, apmixed_phys_base,
					      auxadc_phys_base, ctrl_id);

	FUNC18(pdev, mt);

	tzdev = FUNC9(&pdev->dev, 0, mt,
						     &mtk_thermal_ops);
	if (FUNC0(tzdev)) {
		ret = FUNC1(tzdev);
		goto err_disable_clk_peri_therm;
	}

	return 0;

err_disable_clk_peri_therm:
	FUNC2(mt->clk_peri_therm);
err_disable_clk_auxadc:
	FUNC2(mt->clk_auxadc);

	return ret;
}