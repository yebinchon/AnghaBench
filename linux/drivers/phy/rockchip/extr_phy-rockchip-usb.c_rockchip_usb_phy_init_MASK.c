#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_11__ ;

/* Type definitions */
struct rockchip_usb_phy_base {int /*<<< orphan*/  dev; TYPE_2__* pdata; } ;
struct TYPE_17__ {struct clk_init_data* init; } ;
struct rockchip_usb_phy {unsigned int reg_offset; int uart_enabled; TYPE_3__* clk; TYPE_3__* clk480m; TYPE_3__* vbus; TYPE_3__* phy; TYPE_11__ clk480m_hw; TYPE_3__* reset; struct device_node* np; struct rockchip_usb_phy_base* base; } ;
struct device_node {int dummy; } ;
struct clk_init_data {char const** parent_names; int num_parents; int /*<<< orphan*/ * ops; scalar_t__ flags; int /*<<< orphan*/ * name; } ;
struct TYPE_20__ {int /*<<< orphan*/  dev; } ;
struct TYPE_19__ {int usb_uart_phy; TYPE_1__* phys; } ;
struct TYPE_18__ {int reg; int /*<<< orphan*/ * pll_name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int FUNC1 (TYPE_3__*) ; 
 char* FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rockchip_usb_phy*) ; 
 struct rockchip_usb_phy* FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ ,struct device_node*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ enable_usb_uart ; 
 int FUNC13 (struct device_node*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_3__* FUNC14 (struct device_node*,char*) ; 
 int /*<<< orphan*/  of_clk_src_simple_get ; 
 scalar_t__ FUNC15 (struct device_node*,char*,unsigned int*) ; 
 TYPE_3__* FUNC16 (struct device_node*,char*) ; 
 int /*<<< orphan*/  ops ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,struct rockchip_usb_phy*) ; 
 int /*<<< orphan*/  rockchip_usb_phy480m_ops ; 
 int /*<<< orphan*/  rockchip_usb_phy_action ; 
 int FUNC18 (struct rockchip_usb_phy*,int) ; 

__attribute__((used)) static int FUNC19(struct rockchip_usb_phy_base *base,
				 struct device_node *child)
{
	struct rockchip_usb_phy *rk_phy;
	unsigned int reg_offset;
	const char *clk_name;
	struct clk_init_data init;
	int err, i;

	rk_phy = FUNC10(base->dev, sizeof(*rk_phy), GFP_KERNEL);
	if (!rk_phy)
		return -ENOMEM;

	rk_phy->base = base;
	rk_phy->np = child;

	if (FUNC15(child, "reg", &reg_offset)) {
		FUNC8(base->dev, "missing reg property in node %pOFn\n",
			child);
		return -EINVAL;
	}

	rk_phy->reset = FUNC16(child, "phy-reset");
	if (FUNC0(rk_phy->reset))
		rk_phy->reset = NULL;

	rk_phy->reg_offset = reg_offset;

	rk_phy->clk = FUNC14(child, "phyclk");
	if (FUNC0(rk_phy->clk))
		rk_phy->clk = NULL;

	i = 0;
	init.name = NULL;
	while (base->pdata->phys[i].reg) {
		if (base->pdata->phys[i].reg == reg_offset) {
			init.name = base->pdata->phys[i].pll_name;
			break;
		}
		i++;
	}

	if (!init.name) {
		FUNC8(base->dev, "phy data not found\n");
		return -EINVAL;
	}

	if (enable_usb_uart && base->pdata->usb_uart_phy == i) {
		FUNC7(base->dev, "phy%d used as uart output\n", i);
		rk_phy->uart_enabled = true;
	} else {
		if (rk_phy->clk) {
			clk_name = FUNC2(rk_phy->clk);
			init.flags = 0;
			init.parent_names = &clk_name;
			init.num_parents = 1;
		} else {
			init.flags = 0;
			init.parent_names = NULL;
			init.num_parents = 0;
		}

		init.ops = &rockchip_usb_phy480m_ops;
		rk_phy->clk480m_hw.init = &init;

		rk_phy->clk480m = FUNC5(base->dev, &rk_phy->clk480m_hw);
		if (FUNC0(rk_phy->clk480m)) {
			err = FUNC1(rk_phy->clk480m);
			goto err_clk;
		}

		err = FUNC13(child, of_clk_src_simple_get,
					rk_phy->clk480m);
		if (err < 0)
			goto err_clk_prov;
	}

	err = FUNC9(base->dev, rockchip_usb_phy_action,
				       rk_phy);
	if (err)
		return err;

	rk_phy->phy = FUNC11(base->dev, child, &ops);
	if (FUNC0(rk_phy->phy)) {
		FUNC8(base->dev, "failed to create PHY\n");
		return FUNC1(rk_phy->phy);
	}
	FUNC17(rk_phy->phy, rk_phy);

	rk_phy->vbus = FUNC12(&rk_phy->phy->dev, "vbus");
	if (FUNC0(rk_phy->vbus)) {
		if (FUNC1(rk_phy->vbus) == -EPROBE_DEFER)
			return FUNC1(rk_phy->vbus);
		rk_phy->vbus = NULL;
	}

	/*
	 * When acting as uart-pipe, just keep clock on otherwise
	 * only power up usb phy when it use, so disable it when init
	 */
	if (rk_phy->uart_enabled)
		return FUNC3(rk_phy->clk);
	else
		return FUNC18(rk_phy, 1);

err_clk_prov:
	if (!rk_phy->uart_enabled)
		FUNC6(rk_phy->clk480m);
err_clk:
	if (rk_phy->clk)
		FUNC4(rk_phy->clk);
	return err;
}