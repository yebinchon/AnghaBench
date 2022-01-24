#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct csi_state {unsigned int num_clks; int /*<<< orphan*/  clk_frequency; int /*<<< orphan*/  wrap_clk; TYPE_2__* clks; TYPE_1__* pdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct device*,unsigned int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 TYPE_2__* FUNC7 (struct device*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * mipi_csis_clk_id ; 

__attribute__((used)) static int FUNC8(struct csi_state *state)
{
	struct device *dev = &state->pdev->dev;
	unsigned int i;
	int ret;

	state->num_clks = FUNC0(mipi_csis_clk_id);
	state->clks = FUNC7(dev, state->num_clks, sizeof(*state->clks),
				   GFP_KERNEL);

	if (!state->clks)
		return -ENOMEM;

	for (i = 0; i < state->num_clks; i++)
		state->clks[i].id = mipi_csis_clk_id[i];

	ret = FUNC5(dev, state->num_clks, state->clks);
	if (ret < 0)
		return ret;

	state->wrap_clk = FUNC6(dev, "wrap");
	if (FUNC1(state->wrap_clk))
		return FUNC2(state->wrap_clk);

	/* Set clock rate */
	ret = FUNC3(state->wrap_clk, state->clk_frequency);
	if (ret < 0)
		FUNC4(dev, "set rate=%d failed: %d\n", state->clk_frequency,
			ret);

	return ret;
}