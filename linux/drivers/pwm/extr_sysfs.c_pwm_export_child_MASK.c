#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  groups; int /*<<< orphan*/  devt; struct device* parent; int /*<<< orphan*/  release; } ;
struct pwm_export {TYPE_1__ child; int /*<<< orphan*/  lock; struct pwm_device* pwm; } ;
struct pwm_device {int /*<<< orphan*/  hwpwm; int /*<<< orphan*/  flags; } ;
struct device {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PWMF_EXPORTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 struct pwm_export* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  pwm_export_release ; 
 int /*<<< orphan*/  pwm_groups ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct device *parent, struct pwm_device *pwm)
{
	struct pwm_export *export;
	char *pwm_prop[2];
	int ret;

	if (FUNC10(PWMF_EXPORTED, &pwm->flags))
		return -EBUSY;

	export = FUNC7(sizeof(*export), GFP_KERNEL);
	if (!export) {
		FUNC1(PWMF_EXPORTED, &pwm->flags);
		return -ENOMEM;
	}

	export->pwm = pwm;
	FUNC8(&export->lock);

	export->child.release = pwm_export_release;
	export->child.parent = parent;
	export->child.devt = FUNC0(0, 0);
	export->child.groups = pwm_groups;
	FUNC2(&export->child, "pwm%u", pwm->hwpwm);

	ret = FUNC3(&export->child);
	if (ret) {
		FUNC1(PWMF_EXPORTED, &pwm->flags);
		FUNC9(&export->child);
		export = NULL;
		return ret;
	}
	pwm_prop[0] = FUNC4(GFP_KERNEL, "EXPORT=pwm%u", pwm->hwpwm);
	pwm_prop[1] = NULL;
	FUNC6(&parent->kobj, KOBJ_CHANGE, pwm_prop);
	FUNC5(pwm_prop[0]);

	return 0;
}