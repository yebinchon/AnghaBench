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
struct serio {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ec_delay; } ;

/* Variables and functions */
 double HZ ; 
 unsigned char I8042_STR_AUXDATA ; 
 int /*<<< orphan*/  msi_rfkill_dwork ; 
 int /*<<< orphan*/  msi_rfkill_work ; 
 int /*<<< orphan*/  msi_touchpad_dwork ; 
 int /*<<< orphan*/  msi_touchpad_work ; 
 TYPE_1__* quirks ; 
 int /*<<< orphan*/  FUNC0 (double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static bool FUNC4(unsigned char data, unsigned char str,
				struct serio *port)
{
	static bool extended;

	if (str & I8042_STR_AUXDATA)
		return false;

	/* 0x54 wwan, 0x62 bluetooth, 0x76 wlan, 0xE4 touchpad toggle*/
	if (FUNC3(data == 0xe0)) {
		extended = true;
		return false;
	} else if (FUNC3(extended)) {
		extended = false;
		switch (data) {
		case 0xE4:
			if (quirks->ec_delay) {
				FUNC1(&msi_touchpad_dwork,
					FUNC0(0.5 * HZ));
			} else
				FUNC2(&msi_touchpad_work);
			break;
		case 0x54:
		case 0x62:
		case 0x76:
			if (quirks->ec_delay) {
				FUNC1(&msi_rfkill_dwork,
					FUNC0(0.5 * HZ));
			} else
				FUNC2(&msi_rfkill_work);
			break;
		}
	}

	return false;
}