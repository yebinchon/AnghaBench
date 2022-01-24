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
typedef  int /*<<< orphan*/  u8 ;
struct ltc294x_info {scalar_t__ Qlsb; int /*<<< orphan*/  client; } ;
typedef  int s32 ;
typedef  enum ltc294x_reg { ____Placeholder_ltc294x_reg } ltc294x_reg ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct ltc294x_info const*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(const struct ltc294x_info *info,
					enum ltc294x_reg reg, int val)
{
	u8 dataw[2];
	s32 value;

	value = FUNC2(info, val);
	/* Direction depends on how sense+/- were connected */
	if (info->Qlsb < 0)
		value += 0xFFFF;
	if ((value < 0) || (value > 0xFFFF)) /* input validation */
		return -EINVAL;

	/* Set new charge value */
	dataw[0] = FUNC1(value);
	dataw[1] = FUNC0(value);
	return FUNC3(info->client, reg, &dataw[0], 2);
}