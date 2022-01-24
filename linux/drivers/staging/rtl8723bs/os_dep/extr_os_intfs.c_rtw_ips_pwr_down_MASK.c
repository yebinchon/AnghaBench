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
struct adapter {int bCardDisableWOHSM; int net_closed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 

void FUNC2(struct adapter *padapter)
{
	FUNC0("===> rtw_ips_pwr_down...................\n");

	padapter->bCardDisableWOHSM = true;
	padapter->net_closed = true;

	FUNC1(padapter);
	padapter->bCardDisableWOHSM = false;
	FUNC0("<=== rtw_ips_pwr_down.....................\n");
}