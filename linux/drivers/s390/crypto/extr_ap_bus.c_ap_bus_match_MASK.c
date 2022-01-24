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
struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct ap_driver {struct ap_device_id* ids; } ;
struct ap_device_id {int match_flags; scalar_t__ dev_type; } ;
struct TYPE_2__ {scalar_t__ device_type; } ;

/* Variables and functions */
 int AP_DEVICE_ID_MATCH_CARD_TYPE ; 
 int AP_DEVICE_ID_MATCH_QUEUE_TYPE ; 
 scalar_t__ FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 TYPE_1__* FUNC2 (struct device*) ; 
 struct ap_driver* FUNC3 (struct device_driver*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct device_driver *drv)
{
	struct ap_driver *ap_drv = FUNC3(drv);
	struct ap_device_id *id;

	/*
	 * Compare device type of the device with the list of
	 * supported types of the device_driver.
	 */
	for (id = ap_drv->ids; id->match_flags; id++) {
		if (FUNC0(dev) &&
		    id->match_flags & AP_DEVICE_ID_MATCH_CARD_TYPE &&
		    id->dev_type == FUNC2(dev)->device_type)
			return 1;
		if (FUNC1(dev) &&
		    id->match_flags & AP_DEVICE_ID_MATCH_QUEUE_TYPE &&
		    id->dev_type == FUNC2(dev)->device_type)
			return 1;
	}
	return 0;
}