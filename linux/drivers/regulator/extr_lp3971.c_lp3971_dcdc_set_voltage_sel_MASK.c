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
struct lp3971 {int dummy; } ;

/* Variables and functions */
 unsigned int BUCK_TARGET_VOL_MASK ; 
 unsigned int BUCK_VOL_CHANGE_FLAG_GO ; 
 unsigned int BUCK_VOL_CHANGE_FLAG_MASK ; 
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  LP3971_BUCK_VOL_CHANGE_REG ; 
 int LP3971_DCDC1 ; 
 int FUNC2 (struct lp3971*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct lp3971* FUNC3 (struct regulator_dev*) ; 
 int FUNC4 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC5(struct regulator_dev *dev,
				       unsigned int selector)
{
	struct lp3971 *lp3971 = FUNC3(dev);
	int buck = FUNC4(dev) - LP3971_DCDC1;
	int ret;

	ret = FUNC2(lp3971, FUNC1(buck),
	       BUCK_TARGET_VOL_MASK, selector);
	if (ret)
		return ret;

	ret = FUNC2(lp3971, LP3971_BUCK_VOL_CHANGE_REG,
	       BUCK_VOL_CHANGE_FLAG_MASK << FUNC0(buck),
	       BUCK_VOL_CHANGE_FLAG_GO << FUNC0(buck));
	if (ret)
		return ret;

	return FUNC2(lp3971, LP3971_BUCK_VOL_CHANGE_REG,
	       BUCK_VOL_CHANGE_FLAG_MASK << FUNC0(buck),
	       0 << FUNC0(buck));
}