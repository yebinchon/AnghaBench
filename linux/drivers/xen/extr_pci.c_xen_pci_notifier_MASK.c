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
struct device {int dummy; } ;

/* Variables and functions */
#define  BUS_NOTIFY_ADD_DEVICE 129 
#define  BUS_NOTIFY_DEL_DEVICE 128 
 int NOTIFY_DONE ; 
 int NOTIFY_OK ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char*) ; 
 int FUNC1 (struct device*) ; 
 int FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct notifier_block *nb,
			    unsigned long action, void *data)
{
	struct device *dev = data;
	int r = 0;

	switch (action) {
	case BUS_NOTIFY_ADD_DEVICE:
		r = FUNC1(dev);
		break;
	case BUS_NOTIFY_DEL_DEVICE:
		r = FUNC2(dev);
		break;
	default:
		return NOTIFY_DONE;
	}
	if (r)
		FUNC0(dev, "Failed to %s - passthrough or MSI/MSI-X might fail!\n",
			action == BUS_NOTIFY_ADD_DEVICE ? "add" :
			(action == BUS_NOTIFY_DEL_DEVICE ? "delete" : "?"));
	return NOTIFY_OK;
}