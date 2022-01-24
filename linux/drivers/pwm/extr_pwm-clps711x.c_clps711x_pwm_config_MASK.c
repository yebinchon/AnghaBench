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
struct TYPE_2__ {int period; } ;
struct pwm_device {int /*<<< orphan*/  hwpwm; TYPE_1__ args; } ;
struct pwm_chip {int dummy; } ;
struct clps711x_chip {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (struct pwm_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct clps711x_chip*,int /*<<< orphan*/ ,unsigned int) ; 
 struct clps711x_chip* FUNC2 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC3(struct pwm_chip *chip, struct pwm_device *pwm,
			       int duty_ns, int period_ns)
{
	struct clps711x_chip *priv = FUNC2(chip);
	unsigned int duty;

	if (period_ns != pwm->args.period)
		return -EINVAL;

	duty = FUNC0(pwm, duty_ns);
	FUNC1(priv, pwm->hwpwm, duty);

	return 0;
}