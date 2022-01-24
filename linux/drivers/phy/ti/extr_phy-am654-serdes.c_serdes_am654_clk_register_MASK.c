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
struct TYPE_2__ {struct clk_init_data* init; } ;
struct clk_init_data {char const** parent_names; unsigned int num_parents; char const* name; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; } ;
struct serdes_am654_clk_mux {unsigned int reg; int clk_id; TYPE_1__ hw; struct regmap* regmap; struct clk_init_data clk_data; } ;
struct serdes_am654 {struct regmap** clks; struct device* dev; struct device_node* of_node; } ;
struct regmap {int dummy; } ;
struct device_node {int /*<<< orphan*/  parent; } ;
struct device {int dummy; } ;
typedef  struct regmap clk ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_SET_RATE_NO_REPARENT ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct regmap* FUNC4 (struct device*,TYPE_1__*) ; 
 void* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*,char const**,unsigned int) ; 
 int /*<<< orphan*/ * FUNC8 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*) ; 
 struct device_node* FUNC10 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  serdes_am654_clk_mux_ops ; 
 struct regmap* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct serdes_am654 *am654_phy,
				     const char *clock_name, int clock_num)
{
	struct device_node *node = am654_phy->of_node;
	struct device *dev = am654_phy->dev;
	struct serdes_am654_clk_mux *mux;
	struct device_node *regmap_node;
	const char **parent_names;
	struct clk_init_data *init;
	unsigned int num_parents;
	struct regmap *regmap;
	const __be32 *addr;
	unsigned int reg;
	struct clk *clk;
	int ret = 0;

	mux = FUNC5(dev, sizeof(*mux), GFP_KERNEL);
	if (!mux)
		return -ENOMEM;

	init = &mux->clk_data;

	regmap_node = FUNC10(node, "ti,serdes-clk", 0);
	if (!regmap_node) {
		FUNC3(dev, "Fail to get serdes-clk node\n");
		ret = -ENODEV;
		goto out_put_node;
	}

	regmap = FUNC11(regmap_node->parent);
	if (FUNC0(regmap)) {
		FUNC3(dev, "Fail to get Syscon regmap\n");
		ret = FUNC1(regmap);
		goto out_put_node;
	}

	num_parents = FUNC6(node);
	if (num_parents < 2) {
		FUNC3(dev, "SERDES clock must have parents\n");
		ret = -EINVAL;
		goto out_put_node;
	}

	parent_names = FUNC5(dev, (sizeof(char *) * num_parents),
				    GFP_KERNEL);
	if (!parent_names) {
		ret = -ENOMEM;
		goto out_put_node;
	}

	FUNC7(node, parent_names, num_parents);

	addr = FUNC8(regmap_node, 0, NULL, NULL);
	if (!addr) {
		ret = -EINVAL;
		goto out_put_node;
	}

	reg = FUNC2(*addr);

	init->ops = &serdes_am654_clk_mux_ops;
	init->flags = CLK_SET_RATE_NO_REPARENT;
	init->parent_names = parent_names;
	init->num_parents = num_parents;
	init->name = clock_name;

	mux->regmap = regmap;
	mux->reg = reg;
	mux->clk_id = clock_num;
	mux->hw.init = init;

	clk = FUNC4(dev, &mux->hw);
	if (FUNC0(clk)) {
		ret = FUNC1(clk);
		goto out_put_node;
	}

	am654_phy->clks[clock_num] = clk;

out_put_node:
	FUNC9(regmap_node);
	return ret;
}