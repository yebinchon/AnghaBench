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

/* Variables and functions */
 int EINVAL ; 
 int EPROBE_DEFER ; 
 struct pwm_device* FUNC0 (int) ; 
 int MAX_PWMS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pwm_device*,char const*) ; 
 int /*<<< orphan*/  pwm_lock ; 
 struct pwm_device* FUNC4 (int) ; 

struct pwm_device *FUNC5(int pwm, const char *label)
{
	struct pwm_device *dev;
	int err;

	if (pwm < 0 || pwm >= MAX_PWMS)
		return FUNC0(-EINVAL);

	FUNC1(&pwm_lock);

	dev = FUNC4(pwm);
	if (!dev) {
		dev = FUNC0(-EPROBE_DEFER);
		goto out;
	}

	err = FUNC3(dev, label);
	if (err < 0)
		dev = FUNC0(err);

out:
	FUNC2(&pwm_lock);

	return dev;
}