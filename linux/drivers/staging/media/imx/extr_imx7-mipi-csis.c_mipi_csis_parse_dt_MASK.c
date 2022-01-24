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
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct csi_state {int /*<<< orphan*/  hs_settle; int /*<<< orphan*/  mrst; int /*<<< orphan*/  clk_frequency; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_SCLK_CSIS_FREQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev,
			      struct csi_state *state)
{
	struct device_node *node = pdev->dev.of_node;

	if (FUNC3(node, "clock-frequency",
				 &state->clk_frequency))
		state->clk_frequency = DEFAULT_SCLK_CSIS_FREQ;

	/* Get MIPI PHY resets */
	state->mrst = FUNC2(&pdev->dev, "mrst");
	if (FUNC0(state->mrst))
		return FUNC1(state->mrst);

	/* Get MIPI CSI-2 bus configuration from the endpoint node. */
	FUNC3(node, "fsl,csis-hs-settle", &state->hs_settle);

	return 0;
}