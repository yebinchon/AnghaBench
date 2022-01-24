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
typedef  int u32 ;
struct regmap {int dummy; } ;
struct aspeed_sig_expr {int ndescs; struct aspeed_sig_desc* descs; } ;
struct aspeed_sig_desc {int enable; int disable; int mask; size_t ip; scalar_t__ reg; } ;
struct aspeed_pinmux_data {int /*<<< orphan*/ * maps; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t ASPEED_IP_SCU ; 
 int FUNC0 (int) ; 
 int EPERM ; 
 int /*<<< orphan*/  HW_REVISION_ID ; 
 scalar_t__ HW_STRAP1 ; 
 scalar_t__ HW_STRAP2 ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int FUNC2 (struct regmap*) ; 
 int FUNC3 (int) ; 
 struct regmap* FUNC4 (struct aspeed_pinmux_data*,size_t) ; 
 int FUNC5 (struct aspeed_pinmux_data*,struct aspeed_sig_expr const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,size_t) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct aspeed_pinmux_data *ctx,
				  const struct aspeed_sig_expr *expr,
				  bool enable)
{
	int ret;
	int i;

	for (i = 0; i < expr->ndescs; i++) {
		const struct aspeed_sig_desc *desc = &expr->descs[i];
		u32 pattern = enable ? desc->enable : desc->disable;
		u32 val = (pattern << FUNC3(desc->mask));
		struct regmap *map;

		map = FUNC4(ctx, desc->ip);
		if (FUNC1(map)) {
			FUNC6(ctx->dev,
				"Failed to acquire regmap for IP block %d\n",
				desc->ip);
			return FUNC2(map);
		}

		/*
		 * Strap registers are configured in hardware or by early-boot
		 * firmware. Treat them as read-only despite that we can write
		 * them. This may mean that certain functions cannot be
		 * deconfigured and is the reason we re-evaluate after writing
		 * all descriptor bits.
		 *
		 * Port D and port E GPIO loopback modes are the only exception
		 * as those are commonly used with front-panel buttons to allow
		 * normal operation of the host when the BMC is powered off or
		 * fails to boot. Once the BMC has booted, the loopback mode
		 * must be disabled for the BMC to control host power-on and
		 * reset.
		 */
		if (desc->ip == ASPEED_IP_SCU && desc->reg == HW_STRAP1 &&
		    !(desc->mask & (FUNC0(21) | FUNC0(22))))
			continue;

		if (desc->ip == ASPEED_IP_SCU && desc->reg == HW_STRAP2)
			continue;

		/* On AST2500, Set bits in SCU70 are cleared from SCU7C */
		if (desc->ip == ASPEED_IP_SCU && desc->reg == HW_STRAP1) {
			u32 value = ~val & desc->mask;

			if (value) {
				ret = FUNC8(ctx->maps[desc->ip],
						   HW_REVISION_ID, value);
				if (ret < 0)
					return ret;
			}
		}

		ret = FUNC7(ctx->maps[desc->ip], desc->reg,
					 desc->mask, val);

		if (ret)
			return ret;
	}

	ret = FUNC5(ctx, expr, enable);
	if (ret < 0)
		return ret;

	if (!ret)
		return -EPERM;

	return 0;
}