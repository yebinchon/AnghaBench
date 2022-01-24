#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct clk_init_data* init; } ;
struct rockchip_usb2phy {int /*<<< orphan*/  clk480m; TYPE_1__* dev; TYPE_3__ clk480m_hw; scalar_t__ clk; } ;
struct device_node {int dummy; } ;
struct clk_init_data {char* name; char const** parent_names; int num_parents; int /*<<< orphan*/ * ops; scalar_t__ flags; } ;
struct TYPE_4__ {struct device_node* of_node; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,struct rockchip_usb2phy*) ; 
 int FUNC6 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 int /*<<< orphan*/  of_clk_src_simple_get ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*,char*,char**) ; 
 int /*<<< orphan*/  rockchip_usb2phy_clk480m_unregister ; 
 int /*<<< orphan*/  rockchip_usb2phy_clkout_ops ; 

__attribute__((used)) static int
FUNC9(struct rockchip_usb2phy *rphy)
{
	struct device_node *node = rphy->dev->of_node;
	struct clk_init_data init;
	const char *clk_name;
	int ret;

	init.flags = 0;
	init.name = "clk_usbphy_480m";
	init.ops = &rockchip_usb2phy_clkout_ops;

	/* optional override of the clockname */
	FUNC8(node, "clock-output-names", &init.name);

	if (rphy->clk) {
		clk_name = FUNC2(rphy->clk);
		init.parent_names = &clk_name;
		init.num_parents = 1;
	} else {
		init.parent_names = NULL;
		init.num_parents = 0;
	}

	rphy->clk480m_hw.init = &init;

	/* register the clock */
	rphy->clk480m = FUNC3(rphy->dev, &rphy->clk480m_hw);
	if (FUNC0(rphy->clk480m)) {
		ret = FUNC1(rphy->clk480m);
		goto err_ret;
	}

	ret = FUNC6(node, of_clk_src_simple_get, rphy->clk480m);
	if (ret < 0)
		goto err_clk_provider;

	ret = FUNC5(rphy->dev, rockchip_usb2phy_clk480m_unregister,
			      rphy);
	if (ret < 0)
		goto err_unreg_action;

	return 0;

err_unreg_action:
	FUNC7(node);
err_clk_provider:
	FUNC4(rphy->clk480m);
err_ret:
	return ret;
}