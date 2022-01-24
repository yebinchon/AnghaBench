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
struct regulator_dev {TYPE_1__* desc; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {unsigned int vsel_mask; int /*<<< orphan*/  vsel_reg; } ;

/* Variables and functions */
 int MAX_STEPS_ONE_TIME ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev,
					     unsigned sel)
{
	int ret, delta_sel;
	unsigned int old_sel, tmp, val, mask = rdev->desc->vsel_mask;

	ret = FUNC1(rdev->regmap, rdev->desc->vsel_reg, &val);
	if (ret != 0)
		return ret;

	tmp = val & ~mask;
	old_sel = val & mask;
	old_sel >>= FUNC0(mask) - 1;
	delta_sel = sel - old_sel;

	/*
	 * If directly modify the register to change the voltage, we will face
	 * the risk of overshoot. Put it into a multi-step, can effectively
	 * avoid this problem, a step is 100mv here.
	 */
	while (delta_sel > MAX_STEPS_ONE_TIME) {
		old_sel += MAX_STEPS_ONE_TIME;
		val = old_sel << (FUNC0(mask) - 1);
		val |= tmp;

		/*
		 * i2c is 400kHz (2.5us per bit) and we must transmit _at least_
		 * 3 bytes (24 bits) plus start and stop so 26 bits.  So we've
		 * got more than 65 us between each voltage change and thus
		 * won't ramp faster than ~1500 uV / us.
		 */
		ret = FUNC2(rdev->regmap, rdev->desc->vsel_reg, val);
		delta_sel = sel - old_sel;
	}

	sel <<= FUNC0(mask) - 1;
	val = tmp | sel;
	ret = FUNC2(rdev->regmap, rdev->desc->vsel_reg, val);

	/*
	 * When we change the voltage register directly, the ramp rate is about
	 * 100000uv/us, wait 1us to make sure the target voltage to be stable,
	 * so we needn't wait extra time after that.
	 */
	FUNC3(1);

	return ret;
}