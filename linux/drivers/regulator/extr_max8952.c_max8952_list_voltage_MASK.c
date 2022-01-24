#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct regulator_dev {int dummy; } ;
struct max8952_data {TYPE_1__* pdata; } ;
struct TYPE_2__ {int* dvs_mode; } ;

/* Variables and functions */
 int EINVAL ; 
 struct max8952_data* FUNC0 (struct regulator_dev*) ; 
 scalar_t__ FUNC1 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *rdev,
		unsigned int selector)
{
	struct max8952_data *max8952 = FUNC0(rdev);

	if (FUNC1(rdev) != 0)
		return -EINVAL;

	return (max8952->pdata->dvs_mode[selector] * 10 + 770) * 1000;
}