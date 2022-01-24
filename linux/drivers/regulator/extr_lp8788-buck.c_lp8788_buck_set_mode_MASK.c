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
typedef  int u8 ;
struct regulator_dev {int dummy; } ;
struct lp8788_buck {int /*<<< orphan*/  lp; } ;
typedef  enum lp8788_buck_id { ____Placeholder_lp8788_buck_id } lp8788_buck_id ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int EINVAL ; 
 int LP8788_AUTO_PWM ; 
 int /*<<< orphan*/  LP8788_BUCK_PWM ; 
 int LP8788_FORCE_PWM ; 
#define  REGULATOR_MODE_FAST 129 
#define  REGULATOR_MODE_NORMAL 128 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct lp8788_buck* FUNC3 (struct regulator_dev*) ; 
 int FUNC4 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC5(struct regulator_dev *rdev, unsigned int mode)
{
	struct lp8788_buck *buck = FUNC3(rdev);
	enum lp8788_buck_id id = FUNC4(rdev);
	u8 mask, val;

	mask = FUNC0(id);
	switch (mode) {
	case REGULATOR_MODE_FAST:
		val = LP8788_FORCE_PWM << FUNC1(id);
		break;
	case REGULATOR_MODE_NORMAL:
		val = LP8788_AUTO_PWM << FUNC1(id);
		break;
	default:
		return -EINVAL;
	}

	return FUNC2(buck->lp, LP8788_BUCK_PWM, mask, val);
}