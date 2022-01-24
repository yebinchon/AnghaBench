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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  RFKILL_TYPE_BLUETOOTH ; 
 int /*<<< orphan*/  RFKILL_TYPE_WLAN ; 
 scalar_t__ WIRELESS_BT ; 
 scalar_t__ WIRELESS_WLAN ; 
 int /*<<< orphan*/  bt_rfkill ; 
 TYPE_1__* compal_device ; 
 int /*<<< orphan*/  compal_rfkill_ops ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wifi_rfkill ; 

__attribute__((used)) static int FUNC4(void)
{
	int ret;

	wifi_rfkill = FUNC0("compal-wifi", &compal_device->dev,
				RFKILL_TYPE_WLAN, &compal_rfkill_ops,
				(void *) WIRELESS_WLAN);
	if (!wifi_rfkill)
		return -ENOMEM;

	ret = FUNC2(wifi_rfkill);
	if (ret)
		goto err_wifi;

	bt_rfkill = FUNC0("compal-bluetooth", &compal_device->dev,
				RFKILL_TYPE_BLUETOOTH, &compal_rfkill_ops,
				(void *) WIRELESS_BT);
	if (!bt_rfkill) {
		ret = -ENOMEM;
		goto err_allocate_bt;
	}
	ret = FUNC2(bt_rfkill);
	if (ret)
		goto err_register_bt;

	return 0;

err_register_bt:
	FUNC1(bt_rfkill);

err_allocate_bt:
	FUNC3(wifi_rfkill);

err_wifi:
	FUNC1(wifi_rfkill);

	return ret;
}