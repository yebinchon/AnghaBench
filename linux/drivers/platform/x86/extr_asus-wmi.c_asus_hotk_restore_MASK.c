#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  dev; } ;
struct TYPE_13__ {scalar_t__ rfkill; } ;
struct TYPE_12__ {scalar_t__ rfkill; } ;
struct TYPE_11__ {scalar_t__ rfkill; } ;
struct TYPE_10__ {scalar_t__ rfkill; } ;
struct TYPE_9__ {scalar_t__ rfkill; } ;
struct TYPE_8__ {scalar_t__ rfkill; } ;
struct asus_wmi {TYPE_7__ kbd_led; TYPE_6__ uwb; TYPE_5__ gps; TYPE_4__ wwan3g; TYPE_3__ wimax; TYPE_2__ bluetooth; TYPE_1__ wlan; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASUS_WMI_DEVID_BLUETOOTH ; 
 int /*<<< orphan*/  ASUS_WMI_DEVID_GPS ; 
 int /*<<< orphan*/  ASUS_WMI_DEVID_UWB ; 
 int /*<<< orphan*/  ASUS_WMI_DEVID_WIMAX ; 
 int /*<<< orphan*/  ASUS_WMI_DEVID_WWAN3G ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct asus_wmi*) ; 
 int /*<<< orphan*/  FUNC2 (struct asus_wmi*) ; 
 int /*<<< orphan*/  FUNC3 (struct asus_wmi*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct asus_wmi*) ; 
 struct asus_wmi* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct asus_wmi*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC8(struct device *device)
{
	struct asus_wmi *asus = FUNC5(device);
	int bl;

	/* Refresh both wlan rfkill state and pci hotplug */
	if (asus->wlan.rfkill)
		FUNC1(asus);

	if (asus->bluetooth.rfkill) {
		bl = !FUNC3(asus,
						   ASUS_WMI_DEVID_BLUETOOTH);
		FUNC7(asus->bluetooth.rfkill, bl);
	}
	if (asus->wimax.rfkill) {
		bl = !FUNC3(asus, ASUS_WMI_DEVID_WIMAX);
		FUNC7(asus->wimax.rfkill, bl);
	}
	if (asus->wwan3g.rfkill) {
		bl = !FUNC3(asus, ASUS_WMI_DEVID_WWAN3G);
		FUNC7(asus->wwan3g.rfkill, bl);
	}
	if (asus->gps.rfkill) {
		bl = !FUNC3(asus, ASUS_WMI_DEVID_GPS);
		FUNC7(asus->gps.rfkill, bl);
	}
	if (asus->uwb.rfkill) {
		bl = !FUNC3(asus, ASUS_WMI_DEVID_UWB);
		FUNC7(asus->uwb.rfkill, bl);
	}
	if (!FUNC0(asus->kbd_led.dev))
		FUNC6(asus);

	if (FUNC4(asus))
		FUNC2(asus);
	return 0;
}