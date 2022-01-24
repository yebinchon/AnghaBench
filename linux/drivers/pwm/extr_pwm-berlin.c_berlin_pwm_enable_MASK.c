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
typedef  int /*<<< orphan*/  u32 ;
struct pwm_device {int /*<<< orphan*/  hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct berlin_pwm_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BERLIN_PWM_EN ; 
 int /*<<< orphan*/  BERLIN_PWM_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct berlin_pwm_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct berlin_pwm_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct berlin_pwm_chip* FUNC2 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC3(struct pwm_chip *chip, struct pwm_device *pwm_dev)
{
	struct berlin_pwm_chip *pwm = FUNC2(chip);
	u32 value;

	value = FUNC0(pwm, pwm_dev->hwpwm, BERLIN_PWM_EN);
	value |= BERLIN_PWM_ENABLE;
	FUNC1(pwm, pwm_dev->hwpwm, value, BERLIN_PWM_EN);

	return 0;
}