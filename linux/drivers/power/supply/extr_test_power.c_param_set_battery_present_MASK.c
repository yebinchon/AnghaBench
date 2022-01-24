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
 size_t TEST_AC ; 
 int /*<<< orphan*/  battery_present ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  map_present ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * test_power_supplies ; 

__attribute__((used)) static int FUNC2(const char *key,
					const struct kernel_param *kp)
{
	battery_present = FUNC0(map_present, key, battery_present);
	FUNC1(test_power_supplies[TEST_AC]);
	return 0;
}