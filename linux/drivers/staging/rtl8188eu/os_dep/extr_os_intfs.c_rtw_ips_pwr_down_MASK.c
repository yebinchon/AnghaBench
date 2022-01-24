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
struct adapter {int net_closed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  LED_CTL_POWER_OFF ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 

void FUNC4(struct adapter *padapter)
{
	unsigned long start_time = jiffies;

	FUNC0("===> rtw_ips_pwr_down...................\n");

	padapter->net_closed = true;

	FUNC2(padapter, LED_CTL_POWER_OFF);

	FUNC3(padapter);
	FUNC0("<=== rtw_ips_pwr_down..................... in %dms\n",
		FUNC1(jiffies - start_time));
}