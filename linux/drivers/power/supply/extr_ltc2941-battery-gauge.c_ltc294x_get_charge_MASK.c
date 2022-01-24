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
struct ltc294x_info {scalar_t__ Qlsb; } ;
typedef  enum ltc294x_reg { ____Placeholder_ltc294x_reg } ltc294x_reg ;

/* Variables and functions */
 int FUNC0 (struct ltc294x_info const*,int) ; 
 int FUNC1 (struct ltc294x_info const*,int) ; 

__attribute__((used)) static int FUNC2(const struct ltc294x_info *info,
				enum ltc294x_reg reg, int *val)
{
	int value = FUNC1(info, reg);

	if (value < 0)
		return value;
	/* When r_sense < 0, this counts up when the battery discharges */
	if (info->Qlsb < 0)
		value -= 0xFFFF;
	*val = FUNC0(info, value);
	return 0;
}