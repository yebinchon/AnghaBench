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
struct sti_pwm_chip {int /*<<< orphan*/  sti_pwm_lock; int /*<<< orphan*/  en_count; int /*<<< orphan*/  pwm_out_en; int /*<<< orphan*/  cpt_clk; int /*<<< orphan*/  pwm_clk; struct device* dev; } ;
struct pwm_device {int /*<<< orphan*/  hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct sti_pwm_chip* FUNC5 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC6(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct sti_pwm_chip *pc = FUNC5(chip);
	struct device *dev = pc->dev;
	int ret = 0;

	/*
	 * Since we have a common enable for all PWM devices, do not enable if
	 * already enabled.
	 */
	FUNC2(&pc->sti_pwm_lock);

	if (!pc->en_count) {
		ret = FUNC0(pc->pwm_clk);
		if (ret)
			goto out;

		ret = FUNC0(pc->cpt_clk);
		if (ret)
			goto out;

		ret = FUNC4(pc->pwm_out_en, 1);
		if (ret) {
			FUNC1(dev, "failed to enable PWM device %u: %d\n",
				pwm->hwpwm, ret);
			goto out;
		}
	}

	pc->en_count++;

out:
	FUNC3(&pc->sti_pwm_lock);
	return ret;
}