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
struct regmap {int dummy; } ;
struct aspeed_sig_expr {int ndescs; struct aspeed_sig_desc* descs; } ;
struct aspeed_sig_desc {size_t ip; } ;
struct aspeed_pinmux_data {int /*<<< orphan*/ * maps; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 struct regmap* FUNC2 (struct aspeed_pinmux_data*,size_t) ; 
 int FUNC3 (struct aspeed_sig_desc const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,size_t) ; 

__attribute__((used)) static int FUNC5(struct aspeed_pinmux_data *ctx,
				   const struct aspeed_sig_expr *expr,
				   bool enabled)
{
	int ret;
	int i;

	for (i = 0; i < expr->ndescs; i++) {
		const struct aspeed_sig_desc *desc = &expr->descs[i];
		struct regmap *map;

		map = FUNC2(ctx, desc->ip);
		if (FUNC0(map)) {
			FUNC4(ctx->dev,
				"Failed to acquire regmap for IP block %d\n",
				desc->ip);
			return FUNC1(map);
		}

		ret = FUNC3(desc, enabled, ctx->maps[desc->ip]);
		if (ret <= 0)
			return ret;
	}

	return 1;
}