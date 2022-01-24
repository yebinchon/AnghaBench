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
struct TYPE_7__ {char* name; int mode; } ;
struct TYPE_6__ {int /*<<< orphan*/  store; int /*<<< orphan*/  show; TYPE_2__ attr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int S_IRUGO ; 
 int S_IWUSR ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int,int,unsigned int*) ; 
 int /*<<< orphan*/  sony_nc_usb_charge_show ; 
 int /*<<< orphan*/  sony_nc_usb_charge_store ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_1__* uc_handle ; 

__attribute__((used)) static int FUNC6(struct platform_device *pd)
{
	unsigned int result;

	if (FUNC4(0x0155, 0x0000, &result) || !(result & 0x01)) {
		/* some models advertise the handle but have no implementation
		 * for it
		 */
		FUNC3("No USB Charge capability found\n");
		return 0;
	}

	uc_handle = FUNC2(sizeof(struct device_attribute), GFP_KERNEL);
	if (!uc_handle)
		return -ENOMEM;

	FUNC5(&uc_handle->attr);
	uc_handle->attr.name = "usb_charge";
	uc_handle->attr.mode = S_IRUGO | S_IWUSR;
	uc_handle->show = sony_nc_usb_charge_show;
	uc_handle->store = sony_nc_usb_charge_store;

	result = FUNC0(&pd->dev, uc_handle);
	if (result) {
		FUNC1(uc_handle);
		uc_handle = NULL;
		return result;
	}

	return 0;
}