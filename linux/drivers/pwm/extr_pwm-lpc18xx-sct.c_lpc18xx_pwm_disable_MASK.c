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
struct pwm_chip {int dummy; } ;
struct lpc18xx_pwm_data {int /*<<< orphan*/  duty_event; } ;
struct lpc18xx_pwm_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpc18xx_pwm_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lpc18xx_pwm_data* FUNC4 (struct pwm_device*) ; 
 struct lpc18xx_pwm_chip* FUNC5 (struct pwm_chip*) ; 

__attribute__((used)) static void FUNC6(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct lpc18xx_pwm_chip *lpc18xx_pwm = FUNC5(chip);
	struct lpc18xx_pwm_data *lpc18xx_data = FUNC4(pwm);

	FUNC3(lpc18xx_pwm,
			   FUNC0(lpc18xx_data->duty_event), 0);
	FUNC3(lpc18xx_pwm, FUNC2(pwm->hwpwm), 0);
	FUNC3(lpc18xx_pwm, FUNC1(pwm->hwpwm), 0);
}