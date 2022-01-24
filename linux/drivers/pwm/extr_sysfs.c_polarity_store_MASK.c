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
struct pwm_state {int polarity; } ;
struct pwm_export {int /*<<< orphan*/  lock; struct pwm_device* pwm; } ;
struct pwm_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
typedef  enum pwm_polarity { ____Placeholder_pwm_polarity } pwm_polarity ;

/* Variables and functions */
 size_t EINVAL ; 
 int PWM_POLARITY_INVERSED ; 
 int PWM_POLARITY_NORMAL ; 
 struct pwm_export* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pwm_device*,struct pwm_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct pwm_device*,struct pwm_state*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *child,
			      struct device_attribute *attr,
			      const char *buf, size_t size)
{
	struct pwm_export *export = FUNC0(child);
	struct pwm_device *pwm = export->pwm;
	enum pwm_polarity polarity;
	struct pwm_state state;
	int ret;

	if (FUNC5(buf, "normal"))
		polarity = PWM_POLARITY_NORMAL;
	else if (FUNC5(buf, "inversed"))
		polarity = PWM_POLARITY_INVERSED;
	else
		return -EINVAL;

	FUNC1(&export->lock);
	FUNC4(pwm, &state);
	state.polarity = polarity;
	ret = FUNC3(pwm, &state);
	FUNC2(&export->lock);

	return ret ? : size;
}