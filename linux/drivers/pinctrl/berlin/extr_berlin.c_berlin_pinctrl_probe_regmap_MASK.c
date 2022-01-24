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
struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct berlin_pinctrl_desc {int dummy; } ;
struct berlin_pinctrl {int /*<<< orphan*/  pctrl_dev; struct berlin_pinctrl_desc const* desc; struct device* dev; struct regmap* regmap; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  berlin_pctrl_desc ; 
 int FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 struct berlin_pinctrl* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ *,struct berlin_pinctrl*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct berlin_pinctrl*) ; 

int FUNC7(struct platform_device *pdev,
				const struct berlin_pinctrl_desc *desc,
				struct regmap *regmap)
{
	struct device *dev = &pdev->dev;
	struct berlin_pinctrl *pctrl;
	int ret;

	pctrl = FUNC4(dev, sizeof(*pctrl), GFP_KERNEL);
	if (!pctrl)
		return -ENOMEM;

	FUNC6(pdev, pctrl);

	pctrl->regmap = regmap;
	pctrl->dev = &pdev->dev;
	pctrl->desc = desc;

	ret = FUNC2(pdev);
	if (ret) {
		FUNC3(dev, "cannot build driver state: %d\n", ret);
		return ret;
	}

	pctrl->pctrl_dev = FUNC5(dev, &berlin_pctrl_desc,
						 pctrl);
	if (FUNC0(pctrl->pctrl_dev)) {
		FUNC3(dev, "failed to register pinctrl driver\n");
		return FUNC1(pctrl->pctrl_dev);
	}

	return 0;
}