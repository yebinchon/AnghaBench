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
struct mlxplat_mlxcpld_regmap_context {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int
FUNC1(void *context, unsigned int reg, unsigned int val)
{
	struct mlxplat_mlxcpld_regmap_context *ctx = context;

	FUNC0(val, ctx->base + reg);
	return 0;
}