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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct samsung_pwm_chip {TYPE_1__ chip; scalar_t__ base; } ;
struct samsung_pwm_channel {int tin_ns; int period_ns; int duty_ns; } ;
struct pwm_device {int /*<<< orphan*/  hwpwm; } ;
struct pwm_chip {int dummy; } ;

/* Variables and functions */
 int ERANGE ; 
 int NSEC_PER_SEC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 struct samsung_pwm_channel* FUNC3 (struct pwm_device*) ; 
 unsigned long FUNC4 (struct samsung_pwm_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct samsung_pwm_chip*,struct pwm_device*) ; 
 int FUNC6 (scalar_t__) ; 
 struct samsung_pwm_chip* FUNC7 (struct pwm_chip*) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct pwm_chip *chip, struct pwm_device *pwm,
				int duty_ns, int period_ns, bool force_period)
{
	struct samsung_pwm_chip *our_chip = FUNC7(chip);
	struct samsung_pwm_channel *chan = FUNC3(pwm);
	u32 tin_ns = chan->tin_ns, tcnt, tcmp, oldtcmp;

	/*
	 * We currently avoid using 64bit arithmetic by using the
	 * fact that anything faster than 1Hz is easily representable
	 * by 32bits.
	 */
	if (period_ns > NSEC_PER_SEC)
		return -ERANGE;

	tcnt = FUNC6(our_chip->base + FUNC1(pwm->hwpwm));
	oldtcmp = FUNC6(our_chip->base + FUNC0(pwm->hwpwm));

	/* We need tick count for calculation, not last tick. */
	++tcnt;

	/* Check to see if we are changing the clock rate of the PWM. */
	if (chan->period_ns != period_ns || force_period) {
		unsigned long tin_rate;
		u32 period;

		period = NSEC_PER_SEC / period_ns;

		FUNC2(our_chip->chip.dev, "duty_ns=%d, period_ns=%d (%u)\n",
						duty_ns, period_ns, period);

		tin_rate = FUNC4(our_chip, pwm->hwpwm, period);

		FUNC2(our_chip->chip.dev, "tin_rate=%lu\n", tin_rate);

		tin_ns = NSEC_PER_SEC / tin_rate;
		tcnt = period_ns / tin_ns;
	}

	/* Period is too short. */
	if (tcnt <= 1)
		return -ERANGE;

	/* Note that counters count down. */
	tcmp = duty_ns / tin_ns;

	/* 0% duty is not available */
	if (!tcmp)
		++tcmp;

	tcmp = tcnt - tcmp;

	/* Decrement to get tick numbers, instead of tick counts. */
	--tcnt;
	/* -1UL will give 100% duty. */
	--tcmp;

	FUNC2(our_chip->chip.dev,
				"tin_ns=%u, tcmp=%u/%u\n", tin_ns, tcmp, tcnt);

	/* Update PWM registers. */
	FUNC8(tcnt, our_chip->base + FUNC1(pwm->hwpwm));
	FUNC8(tcmp, our_chip->base + FUNC0(pwm->hwpwm));

	/*
	 * In case the PWM is currently at 100% duty cycle, force a manual
	 * update to prevent the signal staying high if the PWM is disabled
	 * shortly afer this update (before it autoreloaded the new values).
	 */
	if (oldtcmp == (u32) -1) {
		FUNC2(our_chip->chip.dev, "Forcing manual update");
		FUNC5(our_chip, pwm);
	}

	chan->period_ns = period_ns;
	chan->tin_ns = tin_ns;
	chan->duty_ns = duty_ns;

	return 0;
}