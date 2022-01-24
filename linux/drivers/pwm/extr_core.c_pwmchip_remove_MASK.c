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
struct pwm_device {int /*<<< orphan*/  flags; } ;
struct pwm_chip {unsigned int npwm; int /*<<< orphan*/  list; struct pwm_device* pwms; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_OF ; 
 int EBUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PWMF_REQUESTED ; 
 int /*<<< orphan*/  FUNC1 (struct pwm_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pwm_chip*) ; 
 int /*<<< orphan*/  pwm_lock ; 
 int /*<<< orphan*/  FUNC6 (struct pwm_chip*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC8(struct pwm_chip *chip)
{
	unsigned int i;
	int ret = 0;

	FUNC6(chip);

	FUNC3(&pwm_lock);

	for (i = 0; i < chip->npwm; i++) {
		struct pwm_device *pwm = &chip->pwms[i];

		if (FUNC7(PWMF_REQUESTED, &pwm->flags)) {
			ret = -EBUSY;
			goto out;
		}
	}

	FUNC2(&chip->list);

	if (FUNC0(CONFIG_OF))
		FUNC5(chip);

	FUNC1(chip);

out:
	FUNC4(&pwm_lock);
	return ret;
}