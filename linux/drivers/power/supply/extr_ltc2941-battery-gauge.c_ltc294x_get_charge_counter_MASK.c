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
struct ltc294x_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ LTC294X_MID_SUPPLY ; 
 int /*<<< orphan*/  LTC294X_REG_ACC_CHARGE_MSB ; 
 int FUNC0 (struct ltc294x_info const*,int) ; 
 int FUNC1 (struct ltc294x_info const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(
	const struct ltc294x_info *info, int *val)
{
	int value = FUNC1(info, LTC294X_REG_ACC_CHARGE_MSB);

	if (value < 0)
		return value;
	value -= LTC294X_MID_SUPPLY;
	*val = FUNC0(info, value);
	return 0;
}