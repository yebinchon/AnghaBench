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
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int MAX8997_CHARGER ; 
 int MAX8997_CHARGER_TOPOFF ; 
 int FUNC0 (struct regulator_dev*,int,int,unsigned int*) ; 
 int FUNC1 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *rdev,
				     int min_uA, int max_uA)
{
	unsigned dummy;
	int rid = FUNC1(rdev);

	if (rid != MAX8997_CHARGER && rid != MAX8997_CHARGER_TOPOFF)
		return -EINVAL;

	/* Reuse max8997_set_voltage_ldobuck to set current_limit. */
	return FUNC0(rdev, min_uA, max_uA, &dummy);
}