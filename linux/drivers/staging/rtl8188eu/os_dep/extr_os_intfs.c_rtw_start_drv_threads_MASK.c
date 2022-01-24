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
struct TYPE_2__ {int /*<<< orphan*/  terminate_cmdthread_comp; } ;
struct adapter {TYPE_1__ cmdpriv; int /*<<< orphan*/  cmdThread; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _module_os_intfs_c_ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct adapter*,char*) ; 
 int /*<<< orphan*/  rtw_cmd_thread ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct adapter *padapter)
{
	int err = 0;

	FUNC2(_module_os_intfs_c_, _drv_info_, ("+rtw_start_drv_threads\n"));

	padapter->cmdThread = FUNC3(rtw_cmd_thread, padapter,
					  "RTW_CMD_THREAD");
	if (FUNC0(padapter->cmdThread))
		err = FUNC1(padapter->cmdThread);
	else
		/* wait for cmd_thread to run */
		FUNC4(&padapter->cmdpriv.terminate_cmdthread_comp);

	return err;
}