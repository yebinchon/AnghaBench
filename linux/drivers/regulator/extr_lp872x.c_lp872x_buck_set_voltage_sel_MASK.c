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
typedef  int /*<<< orphan*/  u8 ;
struct regulator_dev {int dummy; } ;
struct lp872x_dvs {int /*<<< orphan*/  gpio; int /*<<< orphan*/  vsel; } ;
struct lp872x {TYPE_1__* pdata; } ;
typedef  enum lp872x_regulator_id { ____Placeholder_lp872x_regulator_id } lp872x_regulator_id ;
struct TYPE_2__ {struct lp872x_dvs* dvs; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  LP872X_VOUT_M ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lp872x*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lp872x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct lp872x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct lp872x* FUNC5 (struct regulator_dev*) ; 
 int FUNC6 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC7(struct regulator_dev *rdev,
					unsigned selector)
{
	struct lp872x *lp = FUNC5(rdev);
	enum lp872x_regulator_id buck = FUNC6(rdev);
	u8 addr, mask = LP872X_VOUT_M;
	struct lp872x_dvs *dvs = lp->pdata ? lp->pdata->dvs : NULL;

	if (dvs && FUNC0(dvs->gpio))
		FUNC3(lp, dvs->vsel, dvs->gpio);

	addr = FUNC2(lp, buck);
	if (!FUNC1(addr))
		return -EINVAL;

	return FUNC4(lp, addr, mask, selector);
}