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
struct pwm_state {int dummy; } ;
struct pwm_export {int /*<<< orphan*/  lock; } ;
struct pwm_device {int /*<<< orphan*/  flags; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PWMF_EXPORTED ; 
 struct pwm_export* FUNC0 (struct device*) ; 
 struct device* FUNC1 (struct device*,struct pwm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pwm_device*,struct pwm_state*) ; 
 int /*<<< orphan*/  pwm_unexport_match ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct pwm_export *FUNC6(struct device *parent,
					      struct pwm_device *pwm,
					      struct pwm_state *state)
{
	struct device *child;
	struct pwm_export *export;

	if (!FUNC5(PWMF_EXPORTED, &pwm->flags))
		return NULL;

	child = FUNC1(parent, pwm, pwm_unexport_match);
	if (!child)
		return NULL;

	export = FUNC0(child);
	FUNC3(child);	/* for device_find_child() */

	FUNC2(&export->lock);
	FUNC4(pwm, state);

	return export;
}