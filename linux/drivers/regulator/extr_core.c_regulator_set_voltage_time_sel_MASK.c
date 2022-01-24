#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct regulator_dev {TYPE_1__* desc; } ;
struct TYPE_4__ {int (* list_voltage ) (struct regulator_dev*,unsigned int) ;int (* set_voltage_time ) (struct regulator_dev*,int,int) ;} ;
struct TYPE_3__ {TYPE_2__* ops; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct regulator_dev*,int,int) ; 
 int FUNC1 (struct regulator_dev*,unsigned int) ; 
 int FUNC2 (struct regulator_dev*,unsigned int) ; 
 int FUNC3 (struct regulator_dev*,int,int) ; 

int FUNC4(struct regulator_dev *rdev,
				   unsigned int old_selector,
				   unsigned int new_selector)
{
	int old_volt, new_volt;

	/* sanity check */
	if (!rdev->desc->ops->list_voltage)
		return -EINVAL;

	old_volt = rdev->desc->ops->list_voltage(rdev, old_selector);
	new_volt = rdev->desc->ops->list_voltage(rdev, new_selector);

	if (rdev->desc->ops->set_voltage_time)
		return rdev->desc->ops->set_voltage_time(rdev, old_volt,
							 new_volt);
	else
		return FUNC0(rdev, old_volt, new_volt);
}