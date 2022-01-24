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
struct lp3972 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LP3972_BUCK_VOL_MASK ; 
 int LP3972_DCDC1 ; 
 unsigned int LP3972_VOL_CHANGE_FLAG_GO ; 
 int /*<<< orphan*/  LP3972_VOL_CHANGE_FLAG_MASK ; 
 int /*<<< orphan*/  LP3972_VOL_CHANGE_REG ; 
 int FUNC1 (struct lp3972*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct lp3972* FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *dev,
				       unsigned int selector)
{
	struct lp3972 *lp3972 = FUNC2(dev);
	int buck = FUNC3(dev) - LP3972_DCDC1;
	int ret;

	ret = FUNC1(lp3972, FUNC0(buck),
				LP3972_BUCK_VOL_MASK, selector);
	if (ret)
		return ret;

	if (buck != 0)
		return ret;

	ret = FUNC1(lp3972, LP3972_VOL_CHANGE_REG,
		LP3972_VOL_CHANGE_FLAG_MASK, LP3972_VOL_CHANGE_FLAG_GO);
	if (ret)
		return ret;

	return FUNC1(lp3972, LP3972_VOL_CHANGE_REG,
				LP3972_VOL_CHANGE_FLAG_MASK, 0);
}