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
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct adapter*) ; 

int FUNC2(struct adapter *padapter)
{
	int result;
	FUNC0("===>  rtw_ips_pwr_up..............\n");

	result = FUNC1(padapter);

	FUNC0("<===  rtw_ips_pwr_up..............\n");
	return result;
}