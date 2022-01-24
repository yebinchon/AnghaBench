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
struct TYPE_2__ {scalar_t__ ops; } ;
struct eeepc_laptop {int /*<<< orphan*/ * wimax_rfkill; int /*<<< orphan*/ * wwan3g_rfkill; int /*<<< orphan*/ * bluetooth_rfkill; TYPE_1__ hotplug_slot; int /*<<< orphan*/ * wlan_rfkill; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEEPC_RFKILL_NODE_1 ; 
 int /*<<< orphan*/  EEEPC_RFKILL_NODE_2 ; 
 int /*<<< orphan*/  EEEPC_RFKILL_NODE_3 ; 
 int /*<<< orphan*/  FUNC0 (struct eeepc_laptop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct eeepc_laptop *eeepc)
{
	FUNC0(eeepc, EEEPC_RFKILL_NODE_1);
	FUNC0(eeepc, EEEPC_RFKILL_NODE_2);
	FUNC0(eeepc, EEEPC_RFKILL_NODE_3);
	if (eeepc->wlan_rfkill) {
		FUNC3(eeepc->wlan_rfkill);
		FUNC2(eeepc->wlan_rfkill);
		eeepc->wlan_rfkill = NULL;
	}

	if (eeepc->hotplug_slot.ops)
		FUNC1(&eeepc->hotplug_slot);

	if (eeepc->bluetooth_rfkill) {
		FUNC3(eeepc->bluetooth_rfkill);
		FUNC2(eeepc->bluetooth_rfkill);
		eeepc->bluetooth_rfkill = NULL;
	}
	if (eeepc->wwan3g_rfkill) {
		FUNC3(eeepc->wwan3g_rfkill);
		FUNC2(eeepc->wwan3g_rfkill);
		eeepc->wwan3g_rfkill = NULL;
	}
	if (eeepc->wimax_rfkill) {
		FUNC3(eeepc->wimax_rfkill);
		FUNC2(eeepc->wimax_rfkill);
		eeepc->wimax_rfkill = NULL;
	}
}