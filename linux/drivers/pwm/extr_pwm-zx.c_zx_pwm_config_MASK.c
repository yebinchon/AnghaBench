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
struct zx_pwm_chip {int /*<<< orphan*/  wclk; } ;
struct pwm_device {int /*<<< orphan*/  hwpwm; } ;
struct pwm_chip {int dummy; } ;

/* Variables and functions */
 int ERANGE ; 
 unsigned int NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  ZX_PWM_CLKDIV_MASK ; 
 unsigned int ZX_PWM_CLKDIV_MAX ; 
 int /*<<< orphan*/  ZX_PWM_DUTY ; 
 int /*<<< orphan*/  ZX_PWM_EN ; 
 int /*<<< orphan*/  ZX_PWM_MODE ; 
 int /*<<< orphan*/  ZX_PWM_PERIOD ; 
 unsigned long long ZX_PWM_PERIOD_MAX ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long,unsigned int) ; 
 scalar_t__ FUNC3 (struct pwm_device*) ; 
 struct zx_pwm_chip* FUNC4 (struct pwm_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct zx_pwm_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct zx_pwm_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct pwm_chip *chip, struct pwm_device *pwm,
			 unsigned int duty_ns, unsigned int period_ns)
{
	struct zx_pwm_chip *zpc = FUNC4(chip);
	unsigned int period_cycles, duty_cycles;
	unsigned long long c;
	unsigned int div = 1;
	unsigned long rate;

	/* Find out the best divider */
	rate = FUNC1(zpc->wclk);

	while (1) {
		c = rate / div;
		c = c * period_ns;
		FUNC2(c, NSEC_PER_SEC);

		if (c < ZX_PWM_PERIOD_MAX)
			break;

		div++;

		if (div > ZX_PWM_CLKDIV_MAX)
			return -ERANGE;
	}

	/* Calculate duty cycles */
	period_cycles = c;
	c *= duty_ns;
	FUNC2(c, period_ns);
	duty_cycles = c;

	/*
	 * If the PWM is being enabled, we have to temporarily disable it
	 * before configuring the registers.
	 */
	if (FUNC3(pwm))
		FUNC5(zpc, pwm->hwpwm, ZX_PWM_MODE, ZX_PWM_EN, 0);

	/* Set up registers */
	FUNC5(zpc, pwm->hwpwm, ZX_PWM_MODE, ZX_PWM_CLKDIV_MASK,
			FUNC0(div));
	FUNC6(zpc, pwm->hwpwm, ZX_PWM_PERIOD, period_cycles);
	FUNC6(zpc, pwm->hwpwm, ZX_PWM_DUTY, duty_cycles);

	/* Re-enable the PWM if needed */
	if (FUNC3(pwm))
		FUNC5(zpc, pwm->hwpwm, ZX_PWM_MODE,
				ZX_PWM_EN, ZX_PWM_EN);

	return 0;
}