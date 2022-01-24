#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uuid_t ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  uuid; } ;
struct TYPE_4__ {TYPE_1__ id; } ;

/* Variables and functions */
 int FUNC0 (struct kobj_uevent_env*,char*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev,
				    struct kobj_uevent_env *env)
{
	uuid_t *dev_id = &FUNC1(dev)->id.uuid;

	return FUNC0(env, "MODALIAS=tee:%pUb", dev_id);
}