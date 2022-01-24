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
struct pwm_state {int /*<<< orphan*/  period; int /*<<< orphan*/  duty_cycle; scalar_t__ enabled; } ;
struct pwm_lpss_chip {TYPE_1__* info; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int bypass; } ;

/* Variables and functions */
 int PWM_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct pwm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pwm_device*,int) ; 
 int FUNC4 (struct pwm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct pwm_lpss_chip*,struct pwm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct pwm_device*) ; 
 int FUNC7 (struct pwm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct pwm_device*,int) ; 
 struct pwm_lpss_chip* FUNC9 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC10(struct pwm_chip *chip, struct pwm_device *pwm,
			  const struct pwm_state *state)
{
	struct pwm_lpss_chip *lpwm = FUNC9(chip);
	int ret;

	if (state->enabled) {
		if (!FUNC2(pwm)) {
			FUNC0(chip->dev);
			ret = FUNC4(pwm);
			if (ret) {
				FUNC1(chip->dev);
				return ret;
			}
			FUNC5(lpwm, pwm, state->duty_cycle, state->period);
			FUNC3(pwm, lpwm->info->bypass == false);
			ret = FUNC7(pwm);
			if (ret) {
				FUNC1(chip->dev);
				return ret;
			}
			FUNC3(pwm, lpwm->info->bypass == true);
		} else {
			ret = FUNC4(pwm);
			if (ret)
				return ret;
			FUNC5(lpwm, pwm, state->duty_cycle, state->period);
			return FUNC7(pwm);
		}
	} else if (FUNC2(pwm)) {
		FUNC8(pwm, FUNC6(pwm) & ~PWM_ENABLE);
		FUNC1(chip->dev);
	}

	return 0;
}