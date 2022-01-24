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
struct lp872x {int dummy; } ;
typedef  enum lp872x_regulator_id { ____Placeholder_lp872x_regulator_id } lp872x_regulator_id ;

/* Variables and functions */
 int EINVAL ; 
 int LP872X_VOUT_M ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct lp872x*,int,int*) ; 
 int FUNC2 (struct lp872x*,int) ; 
 struct lp872x* FUNC3 (struct regulator_dev*) ; 
 int FUNC4 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC5(struct regulator_dev *rdev)
{
	struct lp872x *lp = FUNC3(rdev);
	enum lp872x_regulator_id buck = FUNC4(rdev);
	u8 addr, val;
	int ret;

	addr = FUNC2(lp, buck);
	if (!FUNC0(addr))
		return -EINVAL;

	ret = FUNC1(lp, addr, &val);
	if (ret)
		return ret;

	return val & LP872X_VOUT_M;
}