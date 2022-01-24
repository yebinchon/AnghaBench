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
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct mxs_pwm_chip {scalar_t__ base; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 scalar_t__ PWM_CTRL ; 
 scalar_t__ SET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct mxs_pwm_chip* FUNC1 (struct pwm_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct mxs_pwm_chip *mxs = FUNC1(chip);
	int ret;

	ret = FUNC0(mxs->clk);
	if (ret)
		return ret;

	FUNC2(1 << pwm->hwpwm, mxs->base + PWM_CTRL + SET);

	return 0;
}