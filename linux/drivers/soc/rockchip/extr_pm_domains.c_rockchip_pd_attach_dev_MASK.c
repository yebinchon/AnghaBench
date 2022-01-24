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
struct generic_pm_domain {struct clk* name; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 struct clk* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,struct clk*) ; 
 int FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 

__attribute__((used)) static int FUNC8(struct generic_pm_domain *genpd,
				  struct device *dev)
{
	struct clk *clk;
	int i;
	int error;

	FUNC2(dev, "attaching to power domain '%s'\n", genpd->name);

	error = FUNC6(dev);
	if (error) {
		FUNC3(dev, "pm_clk_create failed %d\n", error);
		return error;
	}

	i = 0;
	while ((clk = FUNC4(dev->of_node, i++)) && !FUNC0(clk)) {
		FUNC2(dev, "adding clock '%pC' to list of PM clocks\n", clk);
		error = FUNC5(dev, clk);
		if (error) {
			FUNC3(dev, "pm_clk_add_clk failed %d\n", error);
			FUNC1(clk);
			FUNC7(dev);
			return error;
		}
	}

	return 0;
}