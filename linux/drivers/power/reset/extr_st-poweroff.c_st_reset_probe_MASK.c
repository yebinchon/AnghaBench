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
struct reset_syscfg {int /*<<< orphan*/  regmap; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct of_device_id* FUNC3 (int /*<<< orphan*/ ,struct device*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  st_reset_of_match ; 
 int /*<<< orphan*/  st_restart_nb ; 
 struct reset_syscfg* st_restart_syscfg ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	const struct of_device_id *match;
	struct device *dev = &pdev->dev;

	match = FUNC3(st_reset_of_match, dev);
	if (!match)
		return -ENODEV;

	st_restart_syscfg = (struct reset_syscfg *)match->data;

	st_restart_syscfg->regmap =
		FUNC5(np, "st,syscfg");
	if (FUNC0(st_restart_syscfg->regmap)) {
		FUNC2(dev, "No syscfg phandle specified\n");
		return FUNC1(st_restart_syscfg->regmap);
	}

	return FUNC4(&st_restart_nb);
}