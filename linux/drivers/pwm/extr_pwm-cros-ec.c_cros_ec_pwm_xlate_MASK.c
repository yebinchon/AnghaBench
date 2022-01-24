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
struct TYPE_2__ {int /*<<< orphan*/  period; } ;
struct pwm_device {TYPE_1__ args; } ;
struct pwm_chip {scalar_t__ npwm; } ;
struct of_phandle_args {scalar_t__* args; } ;

/* Variables and functions */
 int /*<<< orphan*/  EC_PWM_MAX_DUTY ; 
 int /*<<< orphan*/  EINVAL ; 
 struct pwm_device* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct pwm_device*) ; 
 struct pwm_device* FUNC2 (struct pwm_chip*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct pwm_device *
FUNC3(struct pwm_chip *pc, const struct of_phandle_args *args)
{
	struct pwm_device *pwm;

	if (args->args[0] >= pc->npwm)
		return FUNC0(-EINVAL);

	pwm = FUNC2(pc, args->args[0], NULL);
	if (FUNC1(pwm))
		return pwm;

	/* The EC won't let us change the period */
	pwm->args.period = EC_PWM_MAX_DUTY;

	return pwm;
}