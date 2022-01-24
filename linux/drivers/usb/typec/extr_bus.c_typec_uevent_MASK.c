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
struct typec_altmode {int /*<<< orphan*/  mode; int /*<<< orphan*/  svid; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct kobj_uevent_env*,char*,int /*<<< orphan*/ ,...) ; 
 struct typec_altmode* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct kobj_uevent_env *env)
{
	struct typec_altmode *altmode = FUNC1(dev);

	if (FUNC0(env, "SVID=%04X", altmode->svid))
		return -ENOMEM;

	if (FUNC0(env, "MODE=%u", altmode->mode))
		return -ENOMEM;

	return FUNC0(env, "MODALIAS=typec:id%04Xm%02X",
			      altmode->svid, altmode->mode);
}