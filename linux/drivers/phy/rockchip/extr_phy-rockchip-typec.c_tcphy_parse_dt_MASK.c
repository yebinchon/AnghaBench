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
struct rockchip_typec_phy {void* tcphy_rst; void* pipe_rst; void* uphy_rst; void* clk_ref; void* clk_core; void* grf_regs; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 void* FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,char*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct rockchip_typec_phy *tcphy,
			  struct device *dev)
{
	tcphy->grf_regs = FUNC5(dev->of_node,
							  "rockchip,grf");
	if (FUNC0(tcphy->grf_regs)) {
		FUNC2(dev, "could not find grf dt node\n");
		return FUNC1(tcphy->grf_regs);
	}

	tcphy->clk_core = FUNC3(dev, "tcpdcore");
	if (FUNC0(tcphy->clk_core)) {
		FUNC2(dev, "could not get uphy core clock\n");
		return FUNC1(tcphy->clk_core);
	}

	tcphy->clk_ref = FUNC3(dev, "tcpdphy-ref");
	if (FUNC0(tcphy->clk_ref)) {
		FUNC2(dev, "could not get uphy ref clock\n");
		return FUNC1(tcphy->clk_ref);
	}

	tcphy->uphy_rst = FUNC4(dev, "uphy");
	if (FUNC0(tcphy->uphy_rst)) {
		FUNC2(dev, "no uphy_rst reset control found\n");
		return FUNC1(tcphy->uphy_rst);
	}

	tcphy->pipe_rst = FUNC4(dev, "uphy-pipe");
	if (FUNC0(tcphy->pipe_rst)) {
		FUNC2(dev, "no pipe_rst reset control found\n");
		return FUNC1(tcphy->pipe_rst);
	}

	tcphy->tcphy_rst = FUNC4(dev, "uphy-tcphy");
	if (FUNC0(tcphy->tcphy_rst)) {
		FUNC2(dev, "no tcphy_rst reset control found\n");
		return FUNC1(tcphy->tcphy_rst);
	}

	return 0;
}