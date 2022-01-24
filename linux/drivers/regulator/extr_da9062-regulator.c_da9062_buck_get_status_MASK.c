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
 int EIO ; 
 int REGULATOR_STATUS_OFF ; 
 int FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev)
{
	int ret = FUNC1(rdev);

	if (ret == 0) {
		ret = REGULATOR_STATUS_OFF;
	} else if (ret > 0) {
		ret = FUNC0(rdev);
		if (ret > 0)
			ret = FUNC2(ret);
		else if (ret == 0)
			ret = -EIO;
	}

	return ret;
}