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
 char AP_PWR_DOWN ; 
 char NVEC_SLEEP ; 
 int /*<<< orphan*/  nvec_power_handle ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC2(void)
{
	char ap_pwr_down[] = { NVEC_SLEEP, AP_PWR_DOWN };

	FUNC0(nvec_power_handle, false);
	FUNC1(nvec_power_handle, ap_pwr_down, 2);
}