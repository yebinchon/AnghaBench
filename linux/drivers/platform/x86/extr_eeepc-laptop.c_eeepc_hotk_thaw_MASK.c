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
struct eeepc_laptop {scalar_t__ wlan_rfkill; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_ASL_WLAN ; 
 struct eeepc_laptop* FUNC0 (struct device*) ; 
 int FUNC1 (struct eeepc_laptop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct eeepc_laptop*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct device *device)
{
	struct eeepc_laptop *eeepc = FUNC0(device);

	if (eeepc->wlan_rfkill) {
		int wlan;

		/*
		 * Work around bios bug - acpi _PTS turns off the wireless led
		 * during suspend.  Normally it restores it on resume, but
		 * we should kick it ourselves in case hibernation is aborted.
		 */
		wlan = FUNC1(eeepc, CM_ASL_WLAN);
		if (wlan >= 0)
			FUNC2(eeepc, CM_ASL_WLAN, wlan);
	}

	return 0;
}