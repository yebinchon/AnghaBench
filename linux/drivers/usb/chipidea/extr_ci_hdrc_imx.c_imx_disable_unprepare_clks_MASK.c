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
struct device {int dummy; } ;
struct ci_hdrc_imx_data {int /*<<< orphan*/  clk; int /*<<< orphan*/  clk_ipg; int /*<<< orphan*/  clk_ahb; int /*<<< orphan*/  clk_per; scalar_t__ need_three_clks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ci_hdrc_imx_data* FUNC1 (struct device*) ; 

__attribute__((used)) static void FUNC2(struct device *dev)
{
	struct ci_hdrc_imx_data *data = FUNC1(dev);

	if (data->need_three_clks) {
		FUNC0(data->clk_per);
		FUNC0(data->clk_ahb);
		FUNC0(data->clk_ipg);
	} else {
		FUNC0(data->clk);
	}
}