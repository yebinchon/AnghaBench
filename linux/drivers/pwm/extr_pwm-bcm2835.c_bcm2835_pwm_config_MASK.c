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
typedef  unsigned long u32 ;
struct pwm_device {int /*<<< orphan*/  hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct bcm2835_pwm {scalar_t__ base; int /*<<< orphan*/  dev; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 unsigned long FUNC0 (int,unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int NSEC_PER_SEC ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long PERIOD_MIN ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct bcm2835_pwm* FUNC5 (struct pwm_chip*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct pwm_chip *chip, struct pwm_device *pwm,
			      int duty_ns, int period_ns)
{
	struct bcm2835_pwm *pc = FUNC5(chip);
	unsigned long rate = FUNC3(pc->clk);
	unsigned long scaler;
	u32 period;

	if (!rate) {
		FUNC4(pc->dev, "failed to get clock rate\n");
		return -EINVAL;
	}

	scaler = FUNC0(NSEC_PER_SEC, rate);
	period = FUNC0(period_ns, scaler);

	if (period < PERIOD_MIN)
		return -EINVAL;

	FUNC6(FUNC0(duty_ns, scaler),
	       pc->base + FUNC1(pwm->hwpwm));
	FUNC6(period, pc->base + FUNC2(pwm->hwpwm));

	return 0;
}