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
struct pwm_chip {int dummy; } ;
struct pca9685 {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_FULL ; 
 unsigned int FUNC0 (scalar_t__) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 unsigned int PCA9685_ALL_LED_OFF_H ; 
 unsigned int PCA9685_ALL_LED_ON_H ; 
 unsigned int PCA9685_ALL_LED_ON_L ; 
 scalar_t__ PCA9685_MAXCHAN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 struct pca9685* FUNC5 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC6(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct pca9685 *pca = FUNC5(chip);
	unsigned int reg;

	/*
	 * The PWM subsystem does not support a pre-delay.
	 * So, set the ON-timeout to 0
	 */
	if (pwm->hwpwm >= PCA9685_MAXCHAN)
		reg = PCA9685_ALL_LED_ON_L;
	else
		reg = FUNC2(pwm->hwpwm);

	FUNC4(pca->regmap, reg, 0);

	if (pwm->hwpwm >= PCA9685_MAXCHAN)
		reg = PCA9685_ALL_LED_ON_H;
	else
		reg = FUNC1(pwm->hwpwm);

	FUNC4(pca->regmap, reg, 0);

	/*
	 * Clear the full-off bit.
	 * It has precedence over the others and must be off.
	 */
	if (pwm->hwpwm >= PCA9685_MAXCHAN)
		reg = PCA9685_ALL_LED_OFF_H;
	else
		reg = FUNC0(pwm->hwpwm);

	FUNC3(pca->regmap, reg, LED_FULL, 0x0);

	return 0;
}