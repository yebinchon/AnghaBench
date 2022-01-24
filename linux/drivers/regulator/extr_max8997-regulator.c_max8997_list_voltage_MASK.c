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
struct voltage_map_desc {unsigned int min; unsigned int step; int max; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct voltage_map_desc**) ; 
 int EINVAL ; 
 int FUNC1 (struct regulator_dev*) ; 
 struct voltage_map_desc** reg_voltage_map ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *rdev,
		unsigned int selector)
{
	const struct voltage_map_desc *desc;
	int rid = FUNC1(rdev);
	int val;

	if (rid < 0 || rid >= FUNC0(reg_voltage_map))
		return -EINVAL;

	desc = reg_voltage_map[rid];
	if (desc == NULL)
		return -EINVAL;

	val = desc->min + desc->step * selector;
	if (val > desc->max)
		return -EINVAL;

	return val;
}