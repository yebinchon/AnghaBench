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
struct eeepc_laptop {scalar_t__ hotplug_disabled; int /*<<< orphan*/  wimax_rfkill; int /*<<< orphan*/  wwan3g_rfkill; int /*<<< orphan*/  bluetooth_rfkill; int /*<<< orphan*/  wlan_rfkill; int /*<<< orphan*/  hotplug_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_ASL_3G ; 
 int /*<<< orphan*/  CM_ASL_BLUETOOTH ; 
 int /*<<< orphan*/  CM_ASL_WIMAX ; 
 int /*<<< orphan*/  CM_ASL_WLAN ; 
 int EBUSY ; 
 int /*<<< orphan*/  EEEPC_RFKILL_NODE_1 ; 
 int /*<<< orphan*/  EEEPC_RFKILL_NODE_2 ; 
 int /*<<< orphan*/  EEEPC_RFKILL_NODE_3 ; 
 int ENODEV ; 
 int /*<<< orphan*/  RFKILL_TYPE_BLUETOOTH ; 
 int /*<<< orphan*/  RFKILL_TYPE_WIMAX ; 
 int /*<<< orphan*/  RFKILL_TYPE_WLAN ; 
 int /*<<< orphan*/  RFKILL_TYPE_WWAN ; 
 int FUNC0 (struct eeepc_laptop*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct eeepc_laptop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct eeepc_laptop*) ; 
 int FUNC3 (struct eeepc_laptop*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct eeepc_laptop *eeepc)
{
	int result = 0;

	FUNC4(&eeepc->hotplug_lock);

	result = FUNC0(eeepc, &eeepc->wlan_rfkill,
				  "eeepc-wlan", RFKILL_TYPE_WLAN,
				  CM_ASL_WLAN);

	if (result && result != -ENODEV)
		goto exit;

	result = FUNC0(eeepc, &eeepc->bluetooth_rfkill,
				  "eeepc-bluetooth", RFKILL_TYPE_BLUETOOTH,
				  CM_ASL_BLUETOOTH);

	if (result && result != -ENODEV)
		goto exit;

	result = FUNC0(eeepc, &eeepc->wwan3g_rfkill,
				  "eeepc-wwan3g", RFKILL_TYPE_WWAN,
				  CM_ASL_3G);

	if (result && result != -ENODEV)
		goto exit;

	result = FUNC0(eeepc, &eeepc->wimax_rfkill,
				  "eeepc-wimax", RFKILL_TYPE_WIMAX,
				  CM_ASL_WIMAX);

	if (result && result != -ENODEV)
		goto exit;

	if (eeepc->hotplug_disabled)
		return 0;

	result = FUNC3(eeepc);
	/*
	 * If we get -EBUSY then something else is handling the PCI hotplug -
	 * don't fail in this case
	 */
	if (result == -EBUSY)
		result = 0;

	FUNC1(eeepc, EEEPC_RFKILL_NODE_1);
	FUNC1(eeepc, EEEPC_RFKILL_NODE_2);
	FUNC1(eeepc, EEEPC_RFKILL_NODE_3);

exit:
	if (result && result != -ENODEV)
		FUNC2(eeepc);
	return result;
}