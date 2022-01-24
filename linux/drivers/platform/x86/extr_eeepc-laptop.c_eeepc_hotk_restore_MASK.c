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
struct eeepc_laptop {scalar_t__ wimax_rfkill; scalar_t__ wwan3g_rfkill; scalar_t__ bluetooth_rfkill; scalar_t__ wlan_rfkill; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_ASL_3G ; 
 int /*<<< orphan*/  CM_ASL_BLUETOOTH ; 
 int /*<<< orphan*/  CM_ASL_WIMAX ; 
 int /*<<< orphan*/  EEEPC_RFKILL_NODE_1 ; 
 int /*<<< orphan*/  EEEPC_RFKILL_NODE_2 ; 
 int /*<<< orphan*/  EEEPC_RFKILL_NODE_3 ; 
 struct eeepc_laptop* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct eeepc_laptop*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct eeepc_laptop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC4(struct device *device)
{
	struct eeepc_laptop *eeepc = FUNC0(device);

	/* Refresh both wlan rfkill state and pci hotplug */
	if (eeepc->wlan_rfkill) {
		FUNC1(eeepc, EEEPC_RFKILL_NODE_1);
		FUNC1(eeepc, EEEPC_RFKILL_NODE_2);
		FUNC1(eeepc, EEEPC_RFKILL_NODE_3);
	}

	if (eeepc->bluetooth_rfkill)
		FUNC3(eeepc->bluetooth_rfkill,
				    FUNC2(eeepc, CM_ASL_BLUETOOTH) != 1);
	if (eeepc->wwan3g_rfkill)
		FUNC3(eeepc->wwan3g_rfkill,
				    FUNC2(eeepc, CM_ASL_3G) != 1);
	if (eeepc->wimax_rfkill)
		FUNC3(eeepc->wimax_rfkill,
				    FUNC2(eeepc, CM_ASL_WIMAX) != 1);

	return 0;
}