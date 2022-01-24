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
typedef  unsigned int u32 ;
struct regmap {int dummy; } ;
struct aspeed_sig_desc {unsigned int enable; unsigned int disable; unsigned int mask; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int ENODEV ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct aspeed_sig_desc const*,int,unsigned int) ; 
 int FUNC2 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 

int FUNC3(const struct aspeed_sig_desc *desc,
			 bool enabled, struct regmap *map)
{
	int ret;
	unsigned int raw;
	u32 want;

	if (!map)
		return -ENODEV;

	ret = FUNC2(map, desc->reg, &raw);
	if (ret)
		return ret;

	FUNC1(desc, enabled, raw);
	want = enabled ? desc->enable : desc->disable;

	return ((raw & desc->mask) >> FUNC0(desc->mask)) == want;
}