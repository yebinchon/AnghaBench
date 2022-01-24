#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int /*<<< orphan*/ * old_pnetdev; } ;
struct adapter {TYPE_2__* pbuddy_adapter; TYPE_1__ rereg_nd_name_priv; int /*<<< orphan*/  recvpriv; int /*<<< orphan*/  stapriv; int /*<<< orphan*/  xmitpriv; int /*<<< orphan*/  mlmepriv; int /*<<< orphan*/  evtpriv; int /*<<< orphan*/  cmdpriv; int /*<<< orphan*/  mlmeextpriv; } ;
struct TYPE_4__ {int /*<<< orphan*/ * pbuddy_adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _SUCCESS ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _module_os_intfs_c_ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*) ; 

u8 FUNC11(struct adapter *padapter)
{
	FUNC0(_module_os_intfs_c_, _drv_info_, ("==>rtw_free_drv_sw"));

	FUNC4(&padapter->mlmeextpriv);

	FUNC6(&padapter->cmdpriv);

	FUNC7(&padapter->evtpriv);

	FUNC8(&padapter->mlmepriv);

	/* free_io_queue(padapter); */

	FUNC3(&padapter->xmitpriv);

	FUNC2(&padapter->stapriv); /* will free bcmc_stainfo here */

	FUNC1(&padapter->recvpriv);

	FUNC9(padapter);

	/* kfree((void *)padapter); */

	FUNC10(padapter);

	FUNC0(_module_os_intfs_c_, _drv_info_, ("<==rtw_free_drv_sw\n"));

	/* free the old_pnetdev */
	if (padapter->rereg_nd_name_priv.old_pnetdev) {
		FUNC5(padapter->rereg_nd_name_priv.old_pnetdev);
		padapter->rereg_nd_name_priv.old_pnetdev = NULL;
	}

	/*  clear pbuddystruct adapter to avoid access wrong pointer. */
	if (padapter->pbuddy_adapter != NULL)
		padapter->pbuddy_adapter->pbuddy_adapter = NULL;

	FUNC0(_module_os_intfs_c_, _drv_info_, ("-rtw_free_drv_sw\n"));

	return _SUCCESS;
}