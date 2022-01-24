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
struct pwm_state {int enabled; } ;
struct pwm_export {int /*<<< orphan*/  lock; struct pwm_device* pwm; } ;
struct pwm_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 struct pwm_export* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct pwm_device*,struct pwm_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct pwm_device*,struct pwm_state*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *child,
			    struct device_attribute *attr,
			    const char *buf, size_t size)
{
	struct pwm_export *export = FUNC0(child);
	struct pwm_device *pwm = export->pwm;
	struct pwm_state state;
	int val, ret;

	ret = FUNC1(buf, 0, &val);
	if (ret)
		return ret;

	FUNC2(&export->lock);

	FUNC5(pwm, &state);

	switch (val) {
	case 0:
		state.enabled = false;
		break;
	case 1:
		state.enabled = true;
		break;
	default:
		ret = -EINVAL;
		goto unlock;
	}

	ret = FUNC4(pwm, &state);

unlock:
	FUNC3(&export->lock);
	return ret ? : size;
}