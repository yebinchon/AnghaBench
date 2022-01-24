#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct device_attribute {int dummy; } ;
struct TYPE_6__ {char* name; int mode; } ;
struct TYPE_7__ {int /*<<< orphan*/  store; int /*<<< orphan*/  show; TYPE_1__ attr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int S_IRUGO ; 
 int S_IWUSR ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* hsc_handle ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int,int,unsigned int*) ; 
 int /*<<< orphan*/  sony_nc_highspeed_charging_show ; 
 int /*<<< orphan*/  sony_nc_highspeed_charging_store ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pd)
{
	unsigned int result;

	if (FUNC4(0x0131, 0x0000, &result) || !(result & 0x01)) {
		/* some models advertise the handle but have no implementation
		 * for it
		 */
		FUNC3("No High Speed Charging capability found\n");
		return 0;
	}

	hsc_handle = FUNC2(sizeof(struct device_attribute), GFP_KERNEL);
	if (!hsc_handle)
		return -ENOMEM;

	FUNC5(&hsc_handle->attr);
	hsc_handle->attr.name = "battery_highspeed_charging";
	hsc_handle->attr.mode = S_IRUGO | S_IWUSR;
	hsc_handle->show = sony_nc_highspeed_charging_show;
	hsc_handle->store = sony_nc_highspeed_charging_store;

	result = FUNC0(&pd->dev, hsc_handle);
	if (result) {
		FUNC1(hsc_handle);
		hsc_handle = NULL;
		return result;
	}

	return 0;
}