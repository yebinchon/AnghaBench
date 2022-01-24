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
struct stmpe_pwm {int /*<<< orphan*/  stmpe; } ;
struct pwm_device {int /*<<< orphan*/  hwpwm; } ;
struct pwm_chip {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STMPE24XX_PWMCS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct stmpe_pwm* FUNC4 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC5(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct stmpe_pwm *stmpe_pwm = FUNC4(chip);
	u8 value;
	int ret;

	ret = FUNC2(stmpe_pwm->stmpe, STMPE24XX_PWMCS);
	if (ret < 0) {
		FUNC1(chip->dev, "error reading PWM#%u control\n",
			pwm->hwpwm);
		return ret;
	}

	value = ret | FUNC0(pwm->hwpwm);

	ret = FUNC3(stmpe_pwm->stmpe, STMPE24XX_PWMCS, value);
	if (ret) {
		FUNC1(chip->dev, "error writing PWM#%u control\n",
			pwm->hwpwm);
		return ret;
	}

	return 0;
}