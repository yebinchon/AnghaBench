#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/ * rfkill; } ;
struct TYPE_14__ {int /*<<< orphan*/ * rfkill; } ;
struct TYPE_13__ {int /*<<< orphan*/ * rfkill; } ;
struct TYPE_12__ {int /*<<< orphan*/ * rfkill; } ;
struct TYPE_11__ {int /*<<< orphan*/ * rfkill; } ;
struct TYPE_16__ {scalar_t__ ops; } ;
struct TYPE_10__ {int /*<<< orphan*/ * rfkill; } ;
struct asus_wmi {TYPE_7__ uwb; TYPE_6__ gps; TYPE_5__ wwan3g; TYPE_4__ wimax; TYPE_3__ bluetooth; scalar_t__ hotplug_workqueue; TYPE_8__ hotplug_slot; TYPE_2__ wlan; TYPE_1__* driver; } ;
struct TYPE_9__ {scalar_t__ wlan_ctrl_by_user; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct asus_wmi*) ; 
 int /*<<< orphan*/  FUNC2 (struct asus_wmi*,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct asus_wmi *asus)
{
	if (asus->driver->wlan_ctrl_by_user && FUNC0())
		return;

	FUNC2(asus, "\\_SB.PCI0.P0P5");
	FUNC2(asus, "\\_SB.PCI0.P0P6");
	FUNC2(asus, "\\_SB.PCI0.P0P7");
	if (asus->wlan.rfkill) {
		FUNC6(asus->wlan.rfkill);
		FUNC5(asus->wlan.rfkill);
		asus->wlan.rfkill = NULL;
	}
	/*
	 * Refresh pci hotplug in case the rfkill state was changed after
	 * asus_unregister_rfkill_notifier()
	 */
	FUNC1(asus);
	if (asus->hotplug_slot.ops)
		FUNC4(&asus->hotplug_slot);
	if (asus->hotplug_workqueue)
		FUNC3(asus->hotplug_workqueue);

	if (asus->bluetooth.rfkill) {
		FUNC6(asus->bluetooth.rfkill);
		FUNC5(asus->bluetooth.rfkill);
		asus->bluetooth.rfkill = NULL;
	}
	if (asus->wimax.rfkill) {
		FUNC6(asus->wimax.rfkill);
		FUNC5(asus->wimax.rfkill);
		asus->wimax.rfkill = NULL;
	}
	if (asus->wwan3g.rfkill) {
		FUNC6(asus->wwan3g.rfkill);
		FUNC5(asus->wwan3g.rfkill);
		asus->wwan3g.rfkill = NULL;
	}
	if (asus->gps.rfkill) {
		FUNC6(asus->gps.rfkill);
		FUNC5(asus->gps.rfkill);
		asus->gps.rfkill = NULL;
	}
	if (asus->uwb.rfkill) {
		FUNC6(asus->uwb.rfkill);
		FUNC5(asus->uwb.rfkill);
		asus->uwb.rfkill = NULL;
	}
}