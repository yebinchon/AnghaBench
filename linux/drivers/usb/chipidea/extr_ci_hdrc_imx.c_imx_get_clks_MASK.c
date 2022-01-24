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
struct ci_hdrc_imx_data {int need_three_clks; void* clk_per; void* clk_ahb; void* clk_ipg; void* clk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,...) ; 
 struct ci_hdrc_imx_data* FUNC3 (struct device*) ; 
 void* FUNC4 (struct device*,char*) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct ci_hdrc_imx_data *data = FUNC3(dev);
	int ret = 0;

	data->clk_ipg = FUNC4(dev, "ipg");
	if (FUNC0(data->clk_ipg)) {
		/* If the platform only needs one clocks */
		data->clk = FUNC4(dev, NULL);
		if (FUNC0(data->clk)) {
			ret = FUNC1(data->clk);
			FUNC2(dev,
				"Failed to get clks, err=%ld,%ld\n",
				FUNC1(data->clk), FUNC1(data->clk_ipg));
			return ret;
		}
		return ret;
	}

	data->clk_ahb = FUNC4(dev, "ahb");
	if (FUNC0(data->clk_ahb)) {
		ret = FUNC1(data->clk_ahb);
		FUNC2(dev,
			"Failed to get ahb clock, err=%d\n", ret);
		return ret;
	}

	data->clk_per = FUNC4(dev, "per");
	if (FUNC0(data->clk_per)) {
		ret = FUNC1(data->clk_per);
		FUNC2(dev,
			"Failed to get per clock, err=%d\n", ret);
		return ret;
	}

	data->need_three_clks = true;
	return ret;
}