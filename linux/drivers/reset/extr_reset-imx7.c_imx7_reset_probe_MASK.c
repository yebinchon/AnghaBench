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
struct regmap_config {char* name; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct imx7_src_variant {int /*<<< orphan*/  ops; int /*<<< orphan*/  signals_num; int /*<<< orphan*/  signals; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/ * ops; int /*<<< orphan*/  nr_resets; int /*<<< orphan*/  owner; } ;
struct imx7_src {TYPE_1__ rcdev; int /*<<< orphan*/  regmap; int /*<<< orphan*/  signals; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct imx7_src* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,TYPE_1__*) ; 
 struct imx7_src_variant* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ,struct regmap_config*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct imx7_src *imx7src;
	struct device *dev = &pdev->dev;
	struct regmap_config config = { .name = "src" };
	const struct imx7_src_variant *variant = FUNC5(dev);

	imx7src = FUNC3(dev, sizeof(*imx7src), GFP_KERNEL);
	if (!imx7src)
		return -ENOMEM;

	imx7src->signals = variant->signals;
	imx7src->regmap = FUNC7(dev->of_node);
	if (FUNC0(imx7src->regmap)) {
		FUNC2(dev, "Unable to get imx7-src regmap");
		return FUNC1(imx7src->regmap);
	}
	FUNC6(dev, imx7src->regmap, &config);

	imx7src->rcdev.owner     = THIS_MODULE;
	imx7src->rcdev.nr_resets = variant->signals_num;
	imx7src->rcdev.ops       = &variant->ops;
	imx7src->rcdev.of_node   = dev->of_node;

	return FUNC4(dev, &imx7src->rcdev);
}