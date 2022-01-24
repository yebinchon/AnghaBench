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
struct pwm_chip {unsigned int npwm; struct pwm_device* pwms; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PWMF_EXPORTED ; 
 struct device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct pwm_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  pwm_class ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct pwm_device*) ; 
 int /*<<< orphan*/  pwmchip_sysfs_match ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct pwm_chip *chip)
{
	struct device *parent;
	unsigned int i;

	parent = FUNC0(&pwm_class, NULL, chip,
				   pwmchip_sysfs_match);
	if (!parent)
		return;

	for (i = 0; i < chip->npwm; i++) {
		struct pwm_device *pwm = &chip->pwms[i];

		if (FUNC4(PWMF_EXPORTED, &pwm->flags))
			FUNC3(parent, pwm);
	}

	FUNC2(parent);
	FUNC1(parent);
}