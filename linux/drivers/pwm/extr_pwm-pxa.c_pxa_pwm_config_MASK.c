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
struct pxa_pwm_chip {int /*<<< orphan*/  clk; scalar_t__ mmio_base; } ;
struct pwm_device {scalar_t__ hwpwm; } ;
struct pwm_chip {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PWMCR ; 
 scalar_t__ PWMDCR ; 
 unsigned long PWMDCR_FD ; 
 scalar_t__ PWMPCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long long FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long long,int) ; 
 struct pxa_pwm_chip* FUNC4 (struct pwm_chip*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct pwm_chip *chip, struct pwm_device *pwm,
			  int duty_ns, int period_ns)
{
	struct pxa_pwm_chip *pc = FUNC4(chip);
	unsigned long long c;
	unsigned long period_cycles, prescale, pv, dc;
	unsigned long offset;
	int rc;

	offset = pwm->hwpwm ? 0x10 : 0;

	c = FUNC1(pc->clk);
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
		dc = PWMDCR_FD;
	else
		dc = (pv + 1) * duty_ns / period_ns;

	/* NOTE: the clock to PWM has to be enabled first
	 * before writing to the registers
	 */
	rc = FUNC2(pc->clk);
	if (rc < 0)
		return rc;

	FUNC5(prescale, pc->mmio_base + offset + PWMCR);
	FUNC5(dc, pc->mmio_base + offset + PWMDCR);
	FUNC5(pv, pc->mmio_base + offset + PWMPCR);

	FUNC0(pc->clk);
	return 0;
}