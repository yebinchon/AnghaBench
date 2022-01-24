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
struct usb_device {int /*<<< orphan*/  devnum; TYPE_1__* bus; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  busnum; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct kobj_uevent_env*,char*,int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct kobj_uevent_env *env)
{
	struct usb_device *usb_dev;

	usb_dev = FUNC1(dev);

	if (FUNC0(env, "BUSNUM=%03d", usb_dev->bus->busnum))
		return -ENOMEM;

	if (FUNC0(env, "DEVNUM=%03d", usb_dev->devnum))
		return -ENOMEM;

	return 0;
}