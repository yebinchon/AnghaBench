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
struct regulator_dev {struct regmap* regmap; } ;
struct regmap {int dummy; } ;

/* Variables and functions */
 int CHGCTRL2_MBCHOSTEN_MASK ; 
 int EINVAL ; 
#define  MAX14577_CHARGER 128 
 int /*<<< orphan*/  MAX14577_CHG_REG_CHG_CTRL2 ; 
 int /*<<< orphan*/  MAX14577_CHG_REG_STATUS3 ; 
 int STATUS3_CGMBC_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct regmap*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *rdev)
{
	int rid = FUNC1(rdev);
	struct regmap *rmap = rdev->regmap;
	u8 reg_data;

	switch (rid) {
	case MAX14577_CHARGER:
		FUNC0(rmap, MAX14577_CHG_REG_CHG_CTRL2, &reg_data);
		if ((reg_data & CHGCTRL2_MBCHOSTEN_MASK) == 0)
			return 0;
		FUNC0(rmap, MAX14577_CHG_REG_STATUS3, &reg_data);
		if ((reg_data & STATUS3_CGMBC_MASK) == 0)
			return 0;
		/* MBCHOSTEN and CGMBC are on */
		return 1;
	default:
		return -EINVAL;
	}
}