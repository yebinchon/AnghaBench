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
struct s2mpa01_info {int ramp_delay16; int ramp_delay24; int ramp_delay3; int ramp_delay5; int ramp_delay7; int ramp_delay8910; } ;
struct regulator_dev {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  S2MPA01_BUCK1 137 
#define  S2MPA01_BUCK10 136 
 unsigned int S2MPA01_BUCK16_RAMP_SHIFT ; 
 unsigned int S2MPA01_BUCK1_RAMP_EN_SHIFT ; 
#define  S2MPA01_BUCK2 135 
 unsigned int S2MPA01_BUCK24_RAMP_SHIFT ; 
 unsigned int S2MPA01_BUCK2_RAMP_EN_SHIFT ; 
#define  S2MPA01_BUCK3 134 
 unsigned int S2MPA01_BUCK3_RAMP_EN_SHIFT ; 
 unsigned int S2MPA01_BUCK3_RAMP_SHIFT ; 
#define  S2MPA01_BUCK4 133 
 unsigned int S2MPA01_BUCK4_RAMP_EN_SHIFT ; 
#define  S2MPA01_BUCK5 132 
 unsigned int S2MPA01_BUCK5_RAMP_SHIFT ; 
#define  S2MPA01_BUCK6 131 
#define  S2MPA01_BUCK7 130 
 unsigned int S2MPA01_BUCK7_RAMP_SHIFT ; 
#define  S2MPA01_BUCK8 129 
 unsigned int S2MPA01_BUCK8910_RAMP_SHIFT ; 
#define  S2MPA01_BUCK9 128 
 unsigned int S2MPA01_REG_RAMP1 ; 
 unsigned int S2MPA01_REG_RAMP2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 unsigned int FUNC1 (int) ; 
 struct s2mpa01_info* FUNC2 (struct regulator_dev*) ; 
 int const FUNC3 (struct regulator_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned int,int,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct regulator_dev *rdev, int ramp_delay)
{
	struct s2mpa01_info *s2mpa01 = FUNC2(rdev);
	unsigned int ramp_val, ramp_shift, ramp_reg = S2MPA01_REG_RAMP2;
	unsigned int ramp_enable = 1, enable_shift = 0;
	int ret;

	switch (FUNC3(rdev)) {
	case S2MPA01_BUCK1:
		enable_shift = S2MPA01_BUCK1_RAMP_EN_SHIFT;
		if (!ramp_delay) {
			ramp_enable = 0;
			break;
		}

		if (ramp_delay > s2mpa01->ramp_delay16)
			s2mpa01->ramp_delay16 = ramp_delay;
		else
			ramp_delay = s2mpa01->ramp_delay16;

		ramp_shift = S2MPA01_BUCK16_RAMP_SHIFT;
		break;
	case S2MPA01_BUCK2:
		enable_shift = S2MPA01_BUCK2_RAMP_EN_SHIFT;
		if (!ramp_delay) {
			ramp_enable = 0;
			break;
		}

		if (ramp_delay > s2mpa01->ramp_delay24)
			s2mpa01->ramp_delay24 = ramp_delay;
		else
			ramp_delay = s2mpa01->ramp_delay24;

		ramp_shift = S2MPA01_BUCK24_RAMP_SHIFT;
		ramp_reg = S2MPA01_REG_RAMP1;
		break;
	case S2MPA01_BUCK3:
		enable_shift = S2MPA01_BUCK3_RAMP_EN_SHIFT;
		if (!ramp_delay) {
			ramp_enable = 0;
			break;
		}

		s2mpa01->ramp_delay3 = ramp_delay;
		ramp_shift = S2MPA01_BUCK3_RAMP_SHIFT;
		ramp_reg = S2MPA01_REG_RAMP1;
		break;
	case S2MPA01_BUCK4:
		enable_shift = S2MPA01_BUCK4_RAMP_EN_SHIFT;
		if (!ramp_delay) {
			ramp_enable = 0;
			break;
		}

		if (ramp_delay > s2mpa01->ramp_delay24)
			s2mpa01->ramp_delay24 = ramp_delay;
		else
			ramp_delay = s2mpa01->ramp_delay24;

		ramp_shift = S2MPA01_BUCK24_RAMP_SHIFT;
		ramp_reg = S2MPA01_REG_RAMP1;
		break;
	case S2MPA01_BUCK5:
		s2mpa01->ramp_delay5 = ramp_delay;
		ramp_shift = S2MPA01_BUCK5_RAMP_SHIFT;
		break;
	case S2MPA01_BUCK6:
		if (ramp_delay > s2mpa01->ramp_delay16)
			s2mpa01->ramp_delay16 = ramp_delay;
		else
			ramp_delay = s2mpa01->ramp_delay16;

		ramp_shift = S2MPA01_BUCK16_RAMP_SHIFT;
		break;
	case S2MPA01_BUCK7:
		s2mpa01->ramp_delay7 = ramp_delay;
		ramp_shift = S2MPA01_BUCK7_RAMP_SHIFT;
		break;
	case S2MPA01_BUCK8:
	case S2MPA01_BUCK9:
	case S2MPA01_BUCK10:
		if (ramp_delay > s2mpa01->ramp_delay8910)
			s2mpa01->ramp_delay8910 = ramp_delay;
		else
			ramp_delay = s2mpa01->ramp_delay8910;

		ramp_shift = S2MPA01_BUCK8910_RAMP_SHIFT;
		break;
	default:
		return 0;
	}

	if (!ramp_enable)
		goto ramp_disable;

	/* Ramp delay can be enabled/disabled only for buck[1234] */
	if (FUNC3(rdev) >= S2MPA01_BUCK1 &&
			FUNC3(rdev) <= S2MPA01_BUCK4) {
		ret = FUNC4(rdev->regmap, S2MPA01_REG_RAMP1,
					 1 << enable_shift, 1 << enable_shift);
		if (ret) {
			FUNC0(&rdev->dev, "failed to enable ramp rate\n");
			return ret;
		}
	}

	ramp_val = FUNC1(ramp_delay);

	return FUNC4(rdev->regmap, ramp_reg, 0x3 << ramp_shift,
				  ramp_val << ramp_shift);

ramp_disable:
	return FUNC4(rdev->regmap, S2MPA01_REG_RAMP1,
				  1 << enable_shift, 0);
}