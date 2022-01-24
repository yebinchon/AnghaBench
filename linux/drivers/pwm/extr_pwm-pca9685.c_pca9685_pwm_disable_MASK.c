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
 int LED_FULL ; 
 unsigned int FUNC0 (scalar_t__) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 unsigned int PCA9685_ALL_LED_OFF_H ; 
 unsigned int PCA9685_ALL_LED_OFF_L ; 
 scalar_t__ PCA9685_MAXCHAN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int) ; 
 struct pca9685* FUNC3 (struct pwm_chip*) ; 

__attribute__((used)) static void FUNC4(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct pca9685 *pca = FUNC3(chip);
	unsigned int reg;

	if (pwm->hwpwm >= PCA9685_MAXCHAN)
		reg = PCA9685_ALL_LED_OFF_H;
	else
		reg = FUNC0(pwm->hwpwm);

	FUNC2(pca->regmap, reg, LED_FULL);

	/* Clear the LED_OFF counter. */
	if (pwm->hwpwm >= PCA9685_MAXCHAN)
		reg = PCA9685_ALL_LED_OFF_L;
	else
		reg = FUNC1(pwm->hwpwm);

	FUNC2(pca->regmap, reg, 0x0);
}