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
struct TYPE_2__ {int output_mask; } ;
struct samsung_pwm_chip {TYPE_1__ variant; } ;
struct samsung_pwm_channel {int dummy; } ;
struct pwm_device {int /*<<< orphan*/  hwpwm; } ;
struct pwm_chip {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct samsung_pwm_channel* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pwm_device*,struct samsung_pwm_channel*) ; 
 struct samsung_pwm_chip* FUNC4 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC5(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct samsung_pwm_chip *our_chip = FUNC4(chip);
	struct samsung_pwm_channel *our_chan;

	if (!(our_chip->variant.output_mask & FUNC0(pwm->hwpwm))) {
		FUNC1(chip->dev,
			"tried to request PWM channel %d without output\n",
			pwm->hwpwm);
		return -EINVAL;
	}

	our_chan = FUNC2(sizeof(*our_chan), GFP_KERNEL);
	if (!our_chan)
		return -ENOMEM;

	FUNC3(pwm, our_chan);

	return 0;
}