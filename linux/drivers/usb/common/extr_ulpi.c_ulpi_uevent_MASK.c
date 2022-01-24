#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; } ;
struct ulpi {TYPE_1__ id; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct kobj_uevent_env*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device*,struct kobj_uevent_env*) ; 
 struct ulpi* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct kobj_uevent_env *env)
{
	struct ulpi *ulpi = FUNC2(dev);
	int ret;

	ret = FUNC1(dev, env);
	if (ret != -ENODEV)
		return ret;

	if (FUNC0(env, "MODALIAS=ulpi:v%04xp%04x",
			   ulpi->id.vendor, ulpi->id.product))
		return -ENOMEM;
	return 0;
}