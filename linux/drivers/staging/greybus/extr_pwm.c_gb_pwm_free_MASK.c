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
struct pwm_device {int /*<<< orphan*/  hwpwm; } ;
struct pwm_chip {int /*<<< orphan*/  dev; } ;
struct gb_pwm_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gb_pwm_chip*,int /*<<< orphan*/ ) ; 
 struct gb_pwm_chip* FUNC2 (struct pwm_chip*) ; 
 scalar_t__ FUNC3 (struct pwm_device*) ; 

__attribute__((used)) static void FUNC4(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct gb_pwm_chip *pwmc = FUNC2(chip);

	if (FUNC3(pwm))
		FUNC0(chip->dev, "freeing PWM device without disabling\n");

	FUNC1(pwmc, pwm->hwpwm);
}