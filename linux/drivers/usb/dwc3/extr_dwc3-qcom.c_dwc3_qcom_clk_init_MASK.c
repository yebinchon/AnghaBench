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
struct dwc3_qcom {int num_clocks; struct clk** clks; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 int FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk*) ; 
 struct clk** FUNC5 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 struct clk* FUNC6 (struct device_node*,int) ; 

__attribute__((used)) static int FUNC7(struct dwc3_qcom *qcom, int count)
{
	struct device		*dev = qcom->dev;
	struct device_node	*np = dev->of_node;
	int			i;

	if (!np || !count)
		return 0;

	if (count < 0)
		return count;

	qcom->num_clocks = count;

	qcom->clks = FUNC5(dev, qcom->num_clocks,
				  sizeof(struct clk *), GFP_KERNEL);
	if (!qcom->clks)
		return -ENOMEM;

	for (i = 0; i < qcom->num_clocks; i++) {
		struct clk	*clk;
		int		ret;

		clk = FUNC6(np, i);
		if (FUNC0(clk)) {
			while (--i >= 0)
				FUNC4(qcom->clks[i]);
			return FUNC1(clk);
		}

		ret = FUNC3(clk);
		if (ret < 0) {
			while (--i >= 0) {
				FUNC2(qcom->clks[i]);
				FUNC4(qcom->clks[i]);
			}
			FUNC4(clk);

			return ret;
		}

		qcom->clks[i] = clk;
	}

	return 0;
}