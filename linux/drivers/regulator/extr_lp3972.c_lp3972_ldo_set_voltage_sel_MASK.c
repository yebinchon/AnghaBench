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
#define  LP3972_LDO1 129 
#define  LP3972_LDO5 128 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int LP3972_VOL_CHANGE_FLAG_GO ; 
 int LP3972_VOL_CHANGE_FLAG_MASK ; 
 int /*<<< orphan*/  LP3972_VOL_CHANGE_REG ; 
 int FUNC4 (struct lp3972*,int /*<<< orphan*/ ,int,int) ; 
 struct lp3972* FUNC5 (struct regulator_dev*) ; 
 int FUNC6 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC7(struct regulator_dev *dev,
				      unsigned int selector)
{
	struct lp3972 *lp3972 = FUNC5(dev);
	int ldo = FUNC6(dev) - LP3972_LDO1;
	int shift, ret;

	shift = FUNC2(ldo);
	ret = FUNC4(lp3972, FUNC1(ldo),
		FUNC3(ldo) << shift, selector << shift);

	if (ret)
		return ret;

	/*
	 * LDO1 and LDO5 support voltage control by either target voltage1
	 * or target voltage2 register.
	 * We use target voltage1 register for LDO1 and LDO5 in this driver.
	 * We need to update voltage change control register(0x20) to enable
	 * LDO1 and LDO5 to change to their programmed target values.
	 */
	switch (ldo) {
	case LP3972_LDO1:
	case LP3972_LDO5:
		shift = FUNC0(ldo);
		ret = FUNC4(lp3972, LP3972_VOL_CHANGE_REG,
			LP3972_VOL_CHANGE_FLAG_MASK << shift,
			LP3972_VOL_CHANGE_FLAG_GO << shift);
		if (ret)
			return ret;

		ret = FUNC4(lp3972, LP3972_VOL_CHANGE_REG,
			LP3972_VOL_CHANGE_FLAG_MASK << shift, 0);
		break;
	}

	return ret;
}