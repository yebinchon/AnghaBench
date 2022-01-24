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
struct work_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  bluetooth_s ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 scalar_t__ rfk_bluetooth ; 
 scalar_t__ rfk_threeg ; 
 scalar_t__ rfk_wlan ; 
 int /*<<< orphan*/  threeg_s ; 
 int /*<<< orphan*/  wlan_s ; 

__attribute__((used)) static void FUNC2(struct work_struct *ignored)
{
	FUNC0();

	if (rfk_wlan)
		FUNC1(rfk_wlan, !wlan_s);
	if (rfk_bluetooth)
		FUNC1(rfk_bluetooth, !bluetooth_s);
	if (rfk_threeg)
		FUNC1(rfk_threeg, !threeg_s);
}