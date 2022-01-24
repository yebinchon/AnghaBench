#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct clk_init_data* init; } ;
struct inno_hdmi_phy {int /*<<< orphan*/  phyclk; TYPE_2__ hw; TYPE_1__* plat_data; int /*<<< orphan*/  refoclk; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct clk_init_data {char const** parent_names; int num_parents; char* name; int /*<<< orphan*/  ops; scalar_t__ flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  clk_ops; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,TYPE_2__*) ; 
 int FUNC5 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_clk_src_simple_get ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,char*,char**) ; 

__attribute__((used)) static int FUNC7(struct inno_hdmi_phy *inno)
{
	struct device *dev = inno->dev;
	struct device_node *np = dev->of_node;
	struct clk_init_data init;
	const char *parent_name;
	int ret;

	parent_name = FUNC2(inno->refoclk);

	init.parent_names = &parent_name;
	init.num_parents = 1;
	init.flags = 0;
	init.name = "pin_hd20_pclk";
	init.ops = inno->plat_data->clk_ops;

	/* optional override of the clock name */
	FUNC6(np, "clock-output-names", &init.name);

	inno->hw.init = &init;

	inno->phyclk = FUNC4(dev, &inno->hw);
	if (FUNC0(inno->phyclk)) {
		ret = FUNC1(inno->phyclk);
		FUNC3(dev, "failed to register clock: %d\n", ret);
		return ret;
	}

	ret = FUNC5(np, of_clk_src_simple_get, inno->phyclk);
	if (ret) {
		FUNC3(dev, "failed to register clock provider: %d\n", ret);
		return ret;
	}

	return 0;
}