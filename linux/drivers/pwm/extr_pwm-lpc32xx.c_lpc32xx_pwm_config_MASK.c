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
typedef  int u32 ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct lpc32xx_pwm_chip {scalar_t__ base; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int ERANGE ; 
 scalar_t__ NSEC_PER_SEC ; 
 unsigned long long FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned long long,int) ; 
 int FUNC2 (scalar_t__) ; 
 struct lpc32xx_pwm_chip* FUNC3 (struct pwm_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct pwm_chip *chip, struct pwm_device *pwm,
			      int duty_ns, int period_ns)
{
	struct lpc32xx_pwm_chip *lpc32xx = FUNC3(chip);
	unsigned long long c;
	int period_cycles, duty_cycles;
	u32 val;
	c = FUNC0(lpc32xx->clk);

	/* The highest acceptable divisor is 256, which is represented by 0 */
	period_cycles = FUNC1(c * period_ns,
			       (unsigned long long)NSEC_PER_SEC * 256);
	if (!period_cycles || period_cycles > 256)
		return -ERANGE;
	if (period_cycles == 256)
		period_cycles = 0;

	/* Compute 256 x #duty/period value and care for corner cases */
	duty_cycles = FUNC1((unsigned long long)(period_ns - duty_ns) * 256,
				period_ns);
	if (!duty_cycles)
		duty_cycles = 1;
	if (duty_cycles > 255)
		duty_cycles = 255;

	val = FUNC2(lpc32xx->base + (pwm->hwpwm << 2));
	val &= ~0xFFFF;
	val |= (period_cycles << 8) | duty_cycles;
	FUNC4(val, lpc32xx->base + (pwm->hwpwm << 2));

	return 0;
}