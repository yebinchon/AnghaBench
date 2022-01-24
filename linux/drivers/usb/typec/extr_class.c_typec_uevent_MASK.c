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
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct kobj_uevent_env*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct kobj_uevent_env *env)
{
	int ret;

	ret = FUNC0(env, "TYPEC_PORT=%s", FUNC2(dev));
	if (ret)
		FUNC1(dev, "failed to add uevent TYPEC_PORT\n");

	return ret;
}