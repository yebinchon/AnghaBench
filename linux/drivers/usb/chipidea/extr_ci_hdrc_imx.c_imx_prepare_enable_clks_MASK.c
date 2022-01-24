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
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct ci_hdrc_imx_data* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct ci_hdrc_imx_data *data = FUNC3(dev);
	int ret = 0;

	if (data->need_three_clks) {
		ret = FUNC1(data->clk_ipg);
		if (ret) {
			FUNC2(dev,
				"Failed to prepare/enable ipg clk, err=%d\n",
				ret);
			return ret;
		}

		ret = FUNC1(data->clk_ahb);
		if (ret) {
			FUNC2(dev,
				"Failed to prepare/enable ahb clk, err=%d\n",
				ret);
			FUNC0(data->clk_ipg);
			return ret;
		}

		ret = FUNC1(data->clk_per);
		if (ret) {
			FUNC2(dev,
				"Failed to prepare/enable per clk, err=%d\n",
				ret);
			FUNC0(data->clk_ahb);
			FUNC0(data->clk_ipg);
			return ret;
		}
	} else {
		ret = FUNC1(data->clk);
		if (ret) {
			FUNC2(dev,
				"Failed to prepare/enable clk, err=%d\n",
				ret);
			return ret;
		}
	}

	return ret;
}