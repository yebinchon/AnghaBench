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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct berlin_pinctrl_desc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int FUNC2 (struct platform_device*,struct berlin_pinctrl_desc const*,struct regmap*) ; 
 struct device_node* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 struct regmap* FUNC5 (struct device_node*) ; 

int FUNC6(struct platform_device *pdev,
			 const struct berlin_pinctrl_desc *desc)
{
	struct device *dev = &pdev->dev;
	struct device_node *parent_np = FUNC3(dev->of_node);
	struct regmap *regmap = FUNC5(parent_np);

	FUNC4(parent_np);
	if (FUNC0(regmap))
		return FUNC1(regmap);

	return FUNC2(pdev, desc, regmap);
}