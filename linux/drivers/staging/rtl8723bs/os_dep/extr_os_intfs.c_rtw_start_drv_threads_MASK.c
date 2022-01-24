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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  terminate_cmdthread_comp; } ;
struct adapter {TYPE_1__ cmdpriv; void* cmdThread; void* xmitThread; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _FAIL ; 
 int /*<<< orphan*/  _SUCCESS ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _module_os_intfs_c_ ; 
 void* FUNC2 (int /*<<< orphan*/ ,struct adapter*,char*) ; 
 int /*<<< orphan*/  rtw_cmd_thread ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  rtw_xmit_thread ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

u32 FUNC5(struct adapter *padapter)
{
	u32 _status = _SUCCESS;

	FUNC1(_module_os_intfs_c_, _drv_info_, ("+rtw_start_drv_threads\n"));
	padapter->xmitThread = FUNC2(rtw_xmit_thread, padapter, "RTW_XMIT_THREAD");
	if (FUNC0(padapter->xmitThread))
		_status = _FAIL;

	padapter->cmdThread = FUNC2(rtw_cmd_thread, padapter, "RTW_CMD_THREAD");
	if (FUNC0(padapter->cmdThread))
		_status = _FAIL;
	else
		FUNC4(&padapter->cmdpriv.terminate_cmdthread_comp); /* wait for cmd_thread to run */

	FUNC3(padapter);
	return _status;
}