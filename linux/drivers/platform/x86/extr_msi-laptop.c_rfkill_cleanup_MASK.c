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

/* Variables and functions */
 scalar_t__ rfk_bluetooth ; 
 scalar_t__ rfk_threeg ; 
 scalar_t__ rfk_wlan ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(void)
{
	if (rfk_bluetooth) {
		FUNC1(rfk_bluetooth);
		FUNC0(rfk_bluetooth);
	}

	if (rfk_threeg) {
		FUNC1(rfk_threeg);
		FUNC0(rfk_threeg);
	}

	if (rfk_wlan) {
		FUNC1(rfk_wlan);
		FUNC0(rfk_wlan);
	}
}