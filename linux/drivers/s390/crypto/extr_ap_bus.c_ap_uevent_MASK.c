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
struct ap_device {int /*<<< orphan*/  device_type; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct kobj_uevent_env*,char*,int /*<<< orphan*/ ) ; 
 struct ap_device* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct kobj_uevent_env *env)
{
	struct ap_device *ap_dev = FUNC1(dev);
	int retval = 0;

	if (!ap_dev)
		return -ENODEV;

	/* Set up DEV_TYPE environment variable. */
	retval = FUNC0(env, "DEV_TYPE=%04X", ap_dev->device_type);
	if (retval)
		return retval;

	/* Add MODALIAS= */
	retval = FUNC0(env, "MODALIAS=ap:t%02X", ap_dev->device_type);

	return retval;
}