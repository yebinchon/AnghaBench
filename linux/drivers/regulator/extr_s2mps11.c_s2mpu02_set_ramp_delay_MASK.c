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
struct regulator_dev {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
#define  S2MPU02_BUCK1 131 
 unsigned int S2MPU02_BUCK1234_RAMP_MASK ; 
 unsigned int S2MPU02_BUCK1_RAMP_SHIFT ; 
#define  S2MPU02_BUCK2 130 
 unsigned int S2MPU02_BUCK2_RAMP_SHIFT ; 
#define  S2MPU02_BUCK3 129 
 unsigned int S2MPU02_BUCK3_RAMP_SHIFT ; 
#define  S2MPU02_BUCK4 128 
 unsigned int S2MPU02_BUCK4_RAMP_SHIFT ; 
 unsigned int S2MPU02_REG_RAMP1 ; 
 unsigned int FUNC0 (int) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev, int ramp_delay)
{
	unsigned int ramp_val, ramp_shift, ramp_reg;
	int rdev_id = FUNC1(rdev);

	switch (rdev_id) {
	case S2MPU02_BUCK1:
		ramp_shift = S2MPU02_BUCK1_RAMP_SHIFT;
		break;
	case S2MPU02_BUCK2:
		ramp_shift = S2MPU02_BUCK2_RAMP_SHIFT;
		break;
	case S2MPU02_BUCK3:
		ramp_shift = S2MPU02_BUCK3_RAMP_SHIFT;
		break;
	case S2MPU02_BUCK4:
		ramp_shift = S2MPU02_BUCK4_RAMP_SHIFT;
		break;
	default:
		return 0;
	}
	ramp_reg = S2MPU02_REG_RAMP1;
	ramp_val = FUNC0(ramp_delay);

	return FUNC2(rdev->regmap, ramp_reg,
				  S2MPU02_BUCK1234_RAMP_MASK << ramp_shift,
				  ramp_val << ramp_shift);
}