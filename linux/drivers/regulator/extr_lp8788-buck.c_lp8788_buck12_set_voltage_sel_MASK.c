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
typedef  int /*<<< orphan*/  u8 ;
struct regulator_dev {int dummy; } ;
struct lp8788_buck {int /*<<< orphan*/  lp; scalar_t__ dvs; } ;
typedef  enum lp8788_buck_id { ____Placeholder_lp8788_buck_id } lp8788_buck_id ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  LP8788_VOUT_M ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lp8788_buck*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct lp8788_buck*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct lp8788_buck* FUNC4 (struct regulator_dev*) ; 
 int FUNC5 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC6(struct regulator_dev *rdev,
					unsigned selector)
{
	struct lp8788_buck *buck = FUNC4(rdev);
	enum lp8788_buck_id id = FUNC5(rdev);
	u8 addr;

	if (buck->dvs)
		FUNC2(buck, id);

	addr = FUNC1(buck, id);
	if (!FUNC0(addr))
		return -EINVAL;

	return FUNC3(buck->lp, addr, LP8788_VOUT_M, selector);
}