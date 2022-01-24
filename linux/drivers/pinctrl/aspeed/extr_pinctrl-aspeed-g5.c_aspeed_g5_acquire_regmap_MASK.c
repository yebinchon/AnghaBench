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
struct regmap {int dummy; } ;
struct device_node {struct device_node* parent; } ;
struct aspeed_pinmux_data {TYPE_1__* dev; struct regmap** maps; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ASPEED_IP_GFX ; 
 int ASPEED_IP_LPC ; 
 int ASPEED_IP_SCU ; 
 int ASPEED_NR_PINMUX_IPS ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 struct regmap* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC4 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 struct device_node* FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 struct regmap* FUNC7 (struct device_node*) ; 

__attribute__((used)) static struct regmap *FUNC8(struct aspeed_pinmux_data *ctx,
					       int ip)
{
	if (ip == ASPEED_IP_SCU) {
		FUNC2(!ctx->maps[ip], "Missing SCU syscon!");
		return ctx->maps[ip];
	}

	if (ip >= ASPEED_NR_PINMUX_IPS)
		return FUNC0(-EINVAL);

	if (FUNC4(ctx->maps[ip]))
		return ctx->maps[ip];

	if (ip == ASPEED_IP_GFX) {
		struct device_node *node;
		struct regmap *map;

		node = FUNC6(ctx->dev->of_node,
					"aspeed,external-nodes", 0);
		if (node) {
			map = FUNC7(node);
			FUNC5(node);
			if (FUNC1(map))
				return map;
		} else
			return FUNC0(-ENODEV);

		ctx->maps[ASPEED_IP_GFX] = map;
		FUNC3(ctx->dev, "Acquired GFX regmap");
		return map;
	}

	if (ip == ASPEED_IP_LPC) {
		struct device_node *node;
		struct regmap *map;

		node = FUNC6(ctx->dev->of_node,
					"aspeed,external-nodes", 1);
		if (node) {
			map = FUNC7(node->parent);
			FUNC5(node);
			if (FUNC1(map))
				return map;
		} else
			return FUNC0(-ENODEV);

		ctx->maps[ASPEED_IP_LPC] = map;
		FUNC3(ctx->dev, "Acquired LPC regmap");
		return map;
	}

	return FUNC0(-EINVAL);
}