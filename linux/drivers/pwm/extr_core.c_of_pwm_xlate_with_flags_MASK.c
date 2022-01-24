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
struct TYPE_2__ {int period; int /*<<< orphan*/  polarity; } ;
struct pwm_device {TYPE_1__ args; } ;
struct pwm_chip {int of_pwm_n_cells; int npwm; } ;
struct of_phandle_args {int args_count; int* args; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct pwm_device* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct pwm_device*) ; 
 int /*<<< orphan*/  PWM_POLARITY_INVERSED ; 
 int PWM_POLARITY_INVERTED ; 
 int /*<<< orphan*/  PWM_POLARITY_NORMAL ; 
 struct pwm_device* FUNC2 (struct pwm_chip*,int,int /*<<< orphan*/ *) ; 

struct pwm_device *
FUNC3(struct pwm_chip *pc, const struct of_phandle_args *args)
{
	struct pwm_device *pwm;

	/* check, whether the driver supports a third cell for flags */
	if (pc->of_pwm_n_cells < 3)
		return FUNC0(-EINVAL);

	/* flags in the third cell are optional */
	if (args->args_count < 2)
		return FUNC0(-EINVAL);

	if (args->args[0] >= pc->npwm)
		return FUNC0(-EINVAL);

	pwm = FUNC2(pc, args->args[0], NULL);
	if (FUNC1(pwm))
		return pwm;

	pwm->args.period = args->args[1];
	pwm->args.polarity = PWM_POLARITY_NORMAL;

	if (args->args_count > 2 && args->args[2] & PWM_POLARITY_INVERTED)
		pwm->args.polarity = PWM_POLARITY_INVERSED;

	return pwm;
}