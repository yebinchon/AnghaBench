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
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct puv3_pwm_chip {int /*<<< orphan*/  clk; scalar_t__ base; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long OST_PWMDCCR_FDCYCLE ; 
 scalar_t__ OST_PWM_DCCR ; 
 scalar_t__ OST_PWM_PCR ; 
 scalar_t__ OST_PWM_PWCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long long,int) ; 
 struct puv3_pwm_chip* FUNC4 (struct pwm_chip*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct pwm_chip *chip, struct pwm_device *pwm,
			   int duty_ns, int period_ns)
{
	unsigned long period_cycles, prescale, pv, dc;
	struct puv3_pwm_chip *puv3 = FUNC4(chip);
	unsigned long long c;

	c = FUNC1(puv3->clk);
	c = c * period_ns;
	FUNC3(c, 1000000000);
	period_cycles = c;

	if (period_cycles < 1)
		period_cycles = 1;

	prescale = (period_cycles - 1) / 1024;
	pv = period_cycles / (prescale + 1) - 1;

	if (prescale > 63)
		return -EINVAL;

	if (duty_ns == period_ns)
		dc = OST_PWMDCCR_FDCYCLE;
	else
		dc = (pv + 1) * duty_ns / period_ns;

	/*
	 * NOTE: the clock to PWM has to be enabled first
	 * before writing to the registers
	 */
	FUNC2(puv3->clk);

	FUNC5(prescale, puv3->base + OST_PWM_PWCR);
	FUNC5(pv - dc, puv3->base + OST_PWM_DCCR);
	FUNC5(pv, puv3->base + OST_PWM_PCR);

	FUNC0(puv3->clk);

	return 0;
}