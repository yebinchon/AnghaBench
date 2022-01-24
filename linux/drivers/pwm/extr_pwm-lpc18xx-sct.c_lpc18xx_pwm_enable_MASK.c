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
struct lpc18xx_pwm_data {unsigned int duty_event; } ;
struct lpc18xx_pwm_chip {unsigned int period_event; } ;
typedef  enum lpc18xx_pwm_res_action { ____Placeholder_lpc18xx_pwm_res_action } lpc18xx_pwm_res_action ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int LPC18XX_PWM_EVCTRL_COMB_MATCH ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int LPC18XX_PWM_EVSTATEMSK_ALL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int LPC18XX_PWM_RES_CLEAR ; 
 int LPC18XX_PWM_RES_SET ; 
 scalar_t__ PWM_POLARITY_NORMAL ; 
 int /*<<< orphan*/  FUNC6 (struct lpc18xx_pwm_chip*,struct pwm_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct lpc18xx_pwm_chip*,int /*<<< orphan*/ ,int) ; 
 struct lpc18xx_pwm_data* FUNC8 (struct pwm_device*) ; 
 scalar_t__ FUNC9 (struct pwm_device*) ; 
 struct lpc18xx_pwm_chip* FUNC10 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC11(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct lpc18xx_pwm_chip *lpc18xx_pwm = FUNC10(chip);
	struct lpc18xx_pwm_data *lpc18xx_data = FUNC8(pwm);
	enum lpc18xx_pwm_res_action res_action;
	unsigned int set_event, clear_event;

	FUNC7(lpc18xx_pwm,
			   FUNC1(lpc18xx_data->duty_event),
			   FUNC2(lpc18xx_data->duty_event) |
			   LPC18XX_PWM_EVCTRL_COMB_MATCH);

	FUNC7(lpc18xx_pwm,
			   FUNC3(lpc18xx_data->duty_event),
			   LPC18XX_PWM_EVSTATEMSK_ALL);

	if (FUNC9(pwm) == PWM_POLARITY_NORMAL) {
		set_event = lpc18xx_pwm->period_event;
		clear_event = lpc18xx_data->duty_event;
		res_action = LPC18XX_PWM_RES_SET;
	} else {
		set_event = lpc18xx_data->duty_event;
		clear_event = lpc18xx_pwm->period_event;
		res_action = LPC18XX_PWM_RES_CLEAR;
	}

	FUNC7(lpc18xx_pwm, FUNC5(pwm->hwpwm),
			   FUNC0(set_event));
	FUNC7(lpc18xx_pwm, FUNC4(pwm->hwpwm),
			   FUNC0(clear_event));
	FUNC6(lpc18xx_pwm, pwm, res_action);

	return 0;
}