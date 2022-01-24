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
typedef  int /*<<< orphan*/  u8 ;
struct adapter {int /*<<< orphan*/  hw_init_mutex; int /*<<< orphan*/  recvpriv; int /*<<< orphan*/  stapriv; int /*<<< orphan*/  xmitpriv; int /*<<< orphan*/  mlmepriv; int /*<<< orphan*/  mlmeextpriv; } ;

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
 int /*<<< orphan*/  FUNC7 (struct adapter*) ; 

u8 FUNC8(struct adapter *padapter)
{
	FUNC0(_module_os_intfs_c_, _drv_info_, ("==>rtw_free_drv_sw"));

	FUNC4(&padapter->mlmeextpriv);

	FUNC6(&padapter->mlmepriv);
	FUNC3(&padapter->xmitpriv);

	/* will free bcmc_stainfo here */
	FUNC2(&padapter->stapriv);

	FUNC1(&padapter->recvpriv);

	FUNC7(padapter);

	FUNC0(_module_os_intfs_c_, _drv_info_, ("<== rtw_free_drv_sw\n"));

	FUNC5(&padapter->hw_init_mutex);

	FUNC0(_module_os_intfs_c_, _drv_info_, ("-rtw_free_drv_sw\n"));

	return _SUCCESS;
}