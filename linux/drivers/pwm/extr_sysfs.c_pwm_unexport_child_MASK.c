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
struct pwm_device {int /*<<< orphan*/  hwpwm; int /*<<< orphan*/  flags; } ;
struct device {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int /*<<< orphan*/  PWMF_EXPORTED ; 
 struct device* FUNC0 (struct device*,struct pwm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct pwm_device*) ; 
 int /*<<< orphan*/  pwm_unexport_match ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct device *parent, struct pwm_device *pwm)
{
	struct device *child;
	char *pwm_prop[2];

	if (!FUNC7(PWMF_EXPORTED, &pwm->flags))
		return -ENODEV;

	child = FUNC0(parent, pwm, pwm_unexport_match);
	if (!child)
		return -ENODEV;

	pwm_prop[0] = FUNC2(GFP_KERNEL, "UNEXPORT=pwm%u", pwm->hwpwm);
	pwm_prop[1] = NULL;
	FUNC4(&parent->kobj, KOBJ_CHANGE, pwm_prop);
	FUNC3(pwm_prop[0]);

	/* for device_find_child() */
	FUNC5(child);
	FUNC1(child);
	FUNC6(pwm);

	return 0;
}