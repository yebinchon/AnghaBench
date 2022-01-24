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
struct pwm_device {scalar_t__ hwpwm; } ;
struct pwm_chip {int /*<<< orphan*/  dev; } ;
struct pca9685 {int period_ns; int duty_ns; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 unsigned long long FUNC1 (unsigned long long,int) ; 
 int EINVAL ; 
 int LED_FULL ; 
 unsigned int FUNC2 (scalar_t__) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 unsigned int FUNC4 (scalar_t__) ; 
 unsigned int PCA9685_ALL_LED_OFF_H ; 
 unsigned int PCA9685_ALL_LED_OFF_L ; 
 unsigned int PCA9685_ALL_LED_ON_H ; 
 int PCA9685_COUNTER_RANGE ; 
 scalar_t__ PCA9685_MAXCHAN ; 
 int PCA9685_OSC_CLOCK_MHZ ; 
 unsigned int PCA9685_PRESCALE ; 
 int PCA9685_PRESCALE_MAX ; 
 int PCA9685_PRESCALE_MIN ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct pca9685*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int,int) ; 
 struct pca9685* FUNC8 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC9(struct pwm_chip *chip, struct pwm_device *pwm,
			      int duty_ns, int period_ns)
{
	struct pca9685 *pca = FUNC8(chip);
	unsigned long long duty;
	unsigned int reg;
	int prescale;

	if (period_ns != pca->period_ns) {
		prescale = FUNC0(PCA9685_OSC_CLOCK_MHZ * period_ns,
					     PCA9685_COUNTER_RANGE * 1000) - 1;

		if (prescale >= PCA9685_PRESCALE_MIN &&
			prescale <= PCA9685_PRESCALE_MAX) {
			/*
			 * putting the chip briefly into SLEEP mode
			 * at this point won't interfere with the
			 * pm_runtime framework, because the pm_runtime
			 * state is guaranteed active here.
			 */
			/* Put chip into sleep mode */
			FUNC6(pca, true);

			/* Change the chip-wide output frequency */
			FUNC7(pca->regmap, PCA9685_PRESCALE, prescale);

			/* Wake the chip up */
			FUNC6(pca, false);

			pca->period_ns = period_ns;
		} else {
			FUNC5(chip->dev,
				"prescaler not set: period out of bounds!\n");
			return -EINVAL;
		}
	}

	pca->duty_ns = duty_ns;

	if (duty_ns < 1) {
		if (pwm->hwpwm >= PCA9685_MAXCHAN)
			reg = PCA9685_ALL_LED_OFF_H;
		else
			reg = FUNC2(pwm->hwpwm);

		FUNC7(pca->regmap, reg, LED_FULL);

		return 0;
	}

	if (duty_ns == period_ns) {
		/* Clear both OFF registers */
		if (pwm->hwpwm >= PCA9685_MAXCHAN)
			reg = PCA9685_ALL_LED_OFF_L;
		else
			reg = FUNC3(pwm->hwpwm);

		FUNC7(pca->regmap, reg, 0x0);

		if (pwm->hwpwm >= PCA9685_MAXCHAN)
			reg = PCA9685_ALL_LED_OFF_H;
		else
			reg = FUNC2(pwm->hwpwm);

		FUNC7(pca->regmap, reg, 0x0);

		/* Set the full ON bit */
		if (pwm->hwpwm >= PCA9685_MAXCHAN)
			reg = PCA9685_ALL_LED_ON_H;
		else
			reg = FUNC4(pwm->hwpwm);

		FUNC7(pca->regmap, reg, LED_FULL);

		return 0;
	}

	duty = PCA9685_COUNTER_RANGE * (unsigned long long)duty_ns;
	duty = FUNC1(duty, period_ns);

	if (pwm->hwpwm >= PCA9685_MAXCHAN)
		reg = PCA9685_ALL_LED_OFF_L;
	else
		reg = FUNC3(pwm->hwpwm);

	FUNC7(pca->regmap, reg, (int)duty & 0xff);

	if (pwm->hwpwm >= PCA9685_MAXCHAN)
		reg = PCA9685_ALL_LED_OFF_H;
	else
		reg = FUNC2(pwm->hwpwm);

	FUNC7(pca->regmap, reg, ((int)duty >> 8) & 0xf);

	/* Clear the full ON bit, otherwise the set OFF time has no effect */
	if (pwm->hwpwm >= PCA9685_MAXCHAN)
		reg = PCA9685_ALL_LED_ON_H;
	else
		reg = FUNC4(pwm->hwpwm);

	FUNC7(pca->regmap, reg, 0);

	return 0;
}