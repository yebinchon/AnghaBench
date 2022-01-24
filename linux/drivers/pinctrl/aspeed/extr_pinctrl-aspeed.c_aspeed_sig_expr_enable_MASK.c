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
struct aspeed_sig_expr {int dummy; } ;
struct aspeed_pinmux_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct aspeed_pinmux_data*,struct aspeed_sig_expr const*,int) ; 
 int FUNC1 (struct aspeed_pinmux_data*,struct aspeed_sig_expr const*,int) ; 

__attribute__((used)) static int FUNC2(struct aspeed_pinmux_data *ctx,
				  const struct aspeed_sig_expr *expr)
{
	int ret;

	ret = FUNC0(ctx, expr, true);
	if (ret < 0)
		return ret;

	if (!ret)
		return FUNC1(ctx, expr, true);

	return 0;
}