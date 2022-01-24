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
struct pwm_chip {unsigned int npwm; struct pwm_device* pwms; } ;

/* Variables and functions */
 int EINVAL ; 
 struct pwm_device* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pwm_device*,char const*) ; 
 int /*<<< orphan*/  pwm_lock ; 

struct pwm_device *FUNC4(struct pwm_chip *chip,
					 unsigned int index,
					 const char *label)
{
	struct pwm_device *pwm;
	int err;

	if (!chip || index >= chip->npwm)
		return FUNC0(-EINVAL);

	FUNC1(&pwm_lock);
	pwm = &chip->pwms[index];

	err = FUNC3(pwm, label);
	if (err < 0)
		pwm = FUNC0(err);

	FUNC2(&pwm_lock);
	return pwm;
}