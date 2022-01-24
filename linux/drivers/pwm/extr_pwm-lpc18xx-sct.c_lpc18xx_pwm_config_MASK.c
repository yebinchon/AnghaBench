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
struct pwm_chip {int npwm; int /*<<< orphan*/ * pwms; int /*<<< orphan*/  dev; } ;
struct lpc18xx_pwm_chip {int min_period_ns; int max_period_ns; int period_ns; int /*<<< orphan*/  period_lock; int /*<<< orphan*/  event_map; } ;

/* Variables and functions */
 int EBUSY ; 
 int ERANGE ; 
 int /*<<< orphan*/  LPC18XX_PWM_EVENT_MAX ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pwm_chip*,struct pwm_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pwm_chip*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 struct lpc18xx_pwm_chip* FUNC7 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC8(struct pwm_chip *chip, struct pwm_device *pwm,
			      int duty_ns, int period_ns)
{
	struct lpc18xx_pwm_chip *lpc18xx_pwm = FUNC7(chip);
	int requested_events, i;

	if (period_ns < lpc18xx_pwm->min_period_ns ||
	    period_ns > lpc18xx_pwm->max_period_ns) {
		FUNC1(chip->dev, "period %d not in range\n", period_ns);
		return -ERANGE;
	}

	FUNC4(&lpc18xx_pwm->period_lock);

	requested_events = FUNC0(&lpc18xx_pwm->event_map,
					 LPC18XX_PWM_EVENT_MAX);

	/*
	 * The PWM supports only a single period for all PWM channels.
	 * Once the period is set, it can only be changed if no more than one
	 * channel is requested at that moment.
	 */
	if (requested_events > 2 && lpc18xx_pwm->period_ns != period_ns &&
	    lpc18xx_pwm->period_ns) {
		FUNC1(chip->dev, "conflicting period requested for PWM %u\n",
			pwm->hwpwm);
		FUNC5(&lpc18xx_pwm->period_lock);
		return -EBUSY;
	}

	if ((requested_events <= 2 && lpc18xx_pwm->period_ns != period_ns) ||
	    !lpc18xx_pwm->period_ns) {
		lpc18xx_pwm->period_ns = period_ns;
		for (i = 0; i < chip->npwm; i++)
			FUNC6(&chip->pwms[i], period_ns);
		FUNC3(chip, period_ns);
	}

	FUNC5(&lpc18xx_pwm->period_lock);

	FUNC2(chip, pwm, duty_ns);

	return 0;
}