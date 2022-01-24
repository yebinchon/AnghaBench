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
 int LP8720_BUCK_FPWM_M ; 
 int LP8720_BUCK_FPWM_S ; 
 int LP8720_BUCK_VOUT2 ; 
#define  LP8720_ID_BUCK 130 
 int LP8725_BUCK1_FPWM_M ; 
 int LP8725_BUCK1_FPWM_S ; 
 int LP8725_BUCK2_FPWM_M ; 
 int LP8725_BUCK2_FPWM_S ; 
 int LP8725_BUCK_CTRL ; 
#define  LP8725_ID_BUCK1 129 
#define  LP8725_ID_BUCK2 128 
 int LP872X_AUTO_PWM ; 
 int LP872X_FORCE_PWM ; 
 unsigned int REGULATOR_MODE_FAST ; 
 unsigned int REGULATOR_MODE_NORMAL ; 
 int FUNC0 (struct lp872x*,int,int,int) ; 
 struct lp872x* FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev, unsigned int mode)
{
	struct lp872x *lp = FUNC1(rdev);
	enum lp872x_regulator_id buck = FUNC2(rdev);
	u8 addr, mask, shift, val;

	switch (buck) {
	case LP8720_ID_BUCK:
		addr = LP8720_BUCK_VOUT2;
		mask = LP8720_BUCK_FPWM_M;
		shift = LP8720_BUCK_FPWM_S;
		break;
	case LP8725_ID_BUCK1:
		addr = LP8725_BUCK_CTRL;
		mask = LP8725_BUCK1_FPWM_M;
		shift = LP8725_BUCK1_FPWM_S;
		break;
	case LP8725_ID_BUCK2:
		addr = LP8725_BUCK_CTRL;
		mask = LP8725_BUCK2_FPWM_M;
		shift = LP8725_BUCK2_FPWM_S;
		break;
	default:
		return -EINVAL;
	}

	if (mode == REGULATOR_MODE_FAST)
		val = LP872X_FORCE_PWM << shift;
	else if (mode == REGULATOR_MODE_NORMAL)
		val = LP872X_AUTO_PWM << shift;
	else
		return -EINVAL;

	return FUNC0(lp, addr, mask, val);
}