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
 int EINVAL ; 
 int LP8788_VOUT_M ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int*) ; 
 int FUNC2 (struct lp8788_buck*,int) ; 
 struct lp8788_buck* FUNC3 (struct regulator_dev*) ; 
 int FUNC4 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC5(struct regulator_dev *rdev)
{
	struct lp8788_buck *buck = FUNC3(rdev);
	enum lp8788_buck_id id = FUNC4(rdev);
	int ret;
	u8 val, addr;

	addr = FUNC2(buck, id);
	if (!FUNC0(addr))
		return -EINVAL;

	ret = FUNC1(buck->lp, addr, &val);
	if (ret)
		return ret;

	return val & LP8788_VOUT_M;
}