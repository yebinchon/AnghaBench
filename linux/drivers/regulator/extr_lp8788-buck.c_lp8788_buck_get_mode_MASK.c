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
 int /*<<< orphan*/  LP8788_BUCK_PWM ; 
 unsigned int REGULATOR_MODE_FAST ; 
 unsigned int REGULATOR_MODE_NORMAL ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct lp8788_buck* FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (struct regulator_dev*) ; 

__attribute__((used)) static unsigned int FUNC4(struct regulator_dev *rdev)
{
	struct lp8788_buck *buck = FUNC2(rdev);
	enum lp8788_buck_id id = FUNC3(rdev);
	u8 val;
	int ret;

	ret = FUNC1(buck->lp, LP8788_BUCK_PWM, &val);
	if (ret)
		return ret;

	return val & FUNC0(id) ?
				REGULATOR_MODE_FAST : REGULATOR_MODE_NORMAL;
}