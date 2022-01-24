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
struct kernel_param {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t TEST_BATTERY ; 
 int battery_capacity ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,char*,int*) ; 
 int /*<<< orphan*/ * test_power_supplies ; 

__attribute__((used)) static int FUNC2(const char *key,
					const struct kernel_param *kp)
{
	int tmp;

	if (1 != FUNC1(key, "%d", &tmp))
		return -EINVAL;

	battery_capacity = tmp;
	FUNC0(test_power_supplies[TEST_BATTERY]);
	return 0;
}