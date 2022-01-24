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
struct imx_pgc_domain {int num_clks; struct clk** clk; TYPE_1__* dev; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int GPC_CLK_MAX ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 struct clk* FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct imx_pgc_domain *domain)
{
	int i, ret;

	for (i = 0; ; i++) {
		struct clk *clk = FUNC3(domain->dev->of_node, i);
		if (FUNC0(clk))
			break;
		if (i >= GPC_CLK_MAX) {
			FUNC2(domain->dev, "more than %d clocks\n",
				GPC_CLK_MAX);
			ret = -EINVAL;
			goto clk_err;
		}
		domain->clk[i] = clk;
	}
	domain->num_clks = i;

	return 0;

clk_err:
	while (i--)
		FUNC1(domain->clk[i]);

	return ret;
}