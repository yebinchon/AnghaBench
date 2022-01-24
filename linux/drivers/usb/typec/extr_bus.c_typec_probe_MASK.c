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
struct typec_altmode_driver {int (* probe ) (struct typec_altmode*) ;} ;
struct typec_altmode {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;
struct altmode {int /*<<< orphan*/  partner; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct typec_altmode*) ; 
 struct altmode* FUNC2 (struct typec_altmode*) ; 
 struct typec_altmode_driver* FUNC3 (int /*<<< orphan*/ ) ; 
 struct typec_altmode* FUNC4 (struct device*) ; 
 int FUNC5 (struct altmode*) ; 
 int /*<<< orphan*/  FUNC6 (struct altmode*) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct typec_altmode_driver *drv = FUNC3(dev->driver);
	struct typec_altmode *adev = FUNC4(dev);
	struct altmode *altmode = FUNC2(adev);
	int ret;

	/* Fail if the port does not support the alternate mode */
	if (!altmode->partner)
		return -ENODEV;

	ret = FUNC5(altmode);
	if (ret) {
		FUNC0(dev, "failed to create symlinks\n");
		return ret;
	}

	ret = drv->probe(adev);
	if (ret)
		FUNC6(altmode);

	return ret;
}