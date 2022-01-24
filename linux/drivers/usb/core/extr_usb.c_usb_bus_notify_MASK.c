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
struct notifier_block {int dummy; } ;
struct device {int /*<<< orphan*/ * type; } ;

/* Variables and functions */
#define  BUS_NOTIFY_ADD_DEVICE 129 
#define  BUS_NOTIFY_DEL_DEVICE 128 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_device_type ; 
 int /*<<< orphan*/  usb_if_device_type ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct notifier_block *nb, unsigned long action,
		void *data)
{
	struct device *dev = data;

	switch (action) {
	case BUS_NOTIFY_ADD_DEVICE:
		if (dev->type == &usb_device_type)
			(void) FUNC2(FUNC0(dev));
		else if (dev->type == &usb_if_device_type)
			FUNC3(FUNC1(dev));
		break;

	case BUS_NOTIFY_DEL_DEVICE:
		if (dev->type == &usb_device_type)
			FUNC4(FUNC0(dev));
		else if (dev->type == &usb_if_device_type)
			FUNC5(FUNC1(dev));
		break;
	}
	return 0;
}