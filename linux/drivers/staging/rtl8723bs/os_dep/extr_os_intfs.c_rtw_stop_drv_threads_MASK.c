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
struct TYPE_2__ {int /*<<< orphan*/  terminate_xmitthread_comp; int /*<<< orphan*/  xmit_comp; } ;
struct adapter {TYPE_1__ xmitpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _module_os_intfs_c_ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5 (struct adapter *padapter)
{
	FUNC0(_module_os_intfs_c_, _drv_info_, ("+rtw_stop_drv_threads\n"));

	FUNC3(padapter);

	/*  Below is to termindate tx_thread... */
	FUNC1(&padapter->xmitpriv.xmit_comp);
	FUNC4(&padapter->xmitpriv.terminate_xmitthread_comp);
	FUNC0(_module_os_intfs_c_, _drv_info_, ("\n drv_halt: rtw_xmit_thread can be terminated !\n"));

	FUNC2(padapter);
}