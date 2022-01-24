#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rfkill {int dummy; } ;
struct asus_wmi {TYPE_3__* driver; TYPE_1__* platform_device; } ;
struct asus_rfkill {int dev_id; struct asus_wmi* asus; struct rfkill* rfkill; } ;
typedef  enum rfkill_type { ____Placeholder_rfkill_type } rfkill_type ;
struct TYPE_6__ {TYPE_2__* quirks; } ;
struct TYPE_5__ {scalar_t__ wapf; scalar_t__ hotplug_wireless; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ASUS_WMI_DEVID_WLAN ; 
 int EINVAL ; 
 int /*<<< orphan*/  asus_rfkill_ops ; 
 int /*<<< orphan*/  asus_rfkill_wlan_ops ; 
 int FUNC0 (struct asus_wmi*,int) ; 
 struct rfkill* FUNC1 (char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,struct asus_rfkill*) ; 
 int /*<<< orphan*/  FUNC2 (struct rfkill*) ; 
 int /*<<< orphan*/  FUNC3 (struct rfkill*,int) ; 
 int FUNC4 (struct rfkill*) ; 
 int /*<<< orphan*/  FUNC5 (struct rfkill*,char*) ; 

__attribute__((used)) static int FUNC6(struct asus_wmi *asus,
			   struct asus_rfkill *arfkill,
			   const char *name, enum rfkill_type type, int dev_id)
{
	int result = FUNC0(asus, dev_id);
	struct rfkill **rfkill = &arfkill->rfkill;

	if (result < 0)
		return result;

	arfkill->dev_id = dev_id;
	arfkill->asus = asus;

	if (dev_id == ASUS_WMI_DEVID_WLAN &&
	    asus->driver->quirks->hotplug_wireless)
		*rfkill = FUNC1(name, &asus->platform_device->dev, type,
				       &asus_rfkill_wlan_ops, arfkill);
	else
		*rfkill = FUNC1(name, &asus->platform_device->dev, type,
				       &asus_rfkill_ops, arfkill);

	if (!*rfkill)
		return -EINVAL;

	if ((dev_id == ASUS_WMI_DEVID_WLAN) &&
			(asus->driver->quirks->wapf > 0))
		FUNC5(*rfkill, "asus-wlan");

	FUNC3(*rfkill, !result);
	result = FUNC4(*rfkill);
	if (result) {
		FUNC2(*rfkill);
		*rfkill = NULL;
		return result;
	}
	return 0;
}