#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  name; int /*<<< orphan*/ * confops; int /*<<< orphan*/ * pctlops; } ;
struct ti_iodelay_device {int /*<<< orphan*/  pctl; TYPE_2__ desc; int /*<<< orphan*/  regmap; TYPE_1__* reg_data; int /*<<< orphan*/  reg_base; int /*<<< orphan*/  phys_base; struct device* dev; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {TYPE_1__* data; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  regmap_config; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct resource*) ; 
 struct ti_iodelay_device* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC7 (int /*<<< orphan*/ ,struct device*) ; 
 struct device_node* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_2__*,struct device*,struct ti_iodelay_device*,int /*<<< orphan*/ *) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct ti_iodelay_device*) ; 
 int FUNC14 (struct device*,struct ti_iodelay_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ti_iodelay_of_match ; 
 scalar_t__ FUNC15 (struct ti_iodelay_device*) ; 
 int /*<<< orphan*/  ti_iodelay_pinctrl_ops ; 
 int /*<<< orphan*/  ti_iodelay_pinctrl_pinconf_ops ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = FUNC8(dev->of_node);
	const struct of_device_id *match;
	struct resource *res;
	struct ti_iodelay_device *iod;
	int ret = 0;

	if (!np) {
		ret = -EINVAL;
		FUNC2(dev, "No OF node\n");
		goto exit_out;
	}

	match = FUNC7(ti_iodelay_of_match, dev);
	if (!match) {
		ret = -EINVAL;
		FUNC2(dev, "No DATA match\n");
		goto exit_out;
	}

	iod = FUNC5(dev, sizeof(*iod), GFP_KERNEL);
	if (!iod) {
		ret = -ENOMEM;
		goto exit_out;
	}
	iod->dev = dev;
	iod->reg_data = match->data;

	/* So far We can assume there is only 1 bank of registers */
	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC2(dev, "Missing MEM resource\n");
		ret = -ENODEV;
		goto exit_out;
	}

	iod->phys_base = res->start;
	iod->reg_base = FUNC4(dev, res);
	if (FUNC0(iod->reg_base)) {
		ret = FUNC1(iod->reg_base);
		goto exit_out;
	}

	iod->regmap = FUNC6(dev, iod->reg_base,
					    iod->reg_data->regmap_config);
	if (FUNC0(iod->regmap)) {
		FUNC2(dev, "Regmap MMIO init failed.\n");
		ret = FUNC1(iod->regmap);
		goto exit_out;
	}

	if (FUNC15(iod))
		goto exit_out;

	ret = FUNC14(dev, iod, res->start);
	if (ret)
		goto exit_out;

	iod->desc.pctlops = &ti_iodelay_pinctrl_ops;
	/* no pinmux ops - we are pinconf */
	iod->desc.confops = &ti_iodelay_pinctrl_pinconf_ops;
	iod->desc.name = FUNC3(dev);
	iod->desc.owner = THIS_MODULE;

	ret = FUNC11(&iod->desc, dev, iod, &iod->pctl);
	if (ret) {
		FUNC2(dev, "Failed to register pinctrl\n");
		goto exit_out;
	}

	FUNC13(pdev, iod);

	return FUNC10(iod->pctl);

exit_out:
	FUNC9(np);
	return ret;
}