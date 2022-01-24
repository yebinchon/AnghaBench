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
typedef  scalar_t__ u8 ;
struct TYPE_4__ {struct adapter* padapter; } ;
struct TYPE_3__ {struct adapter* padapter; } ;
struct adapter {TYPE_2__ stapriv; int /*<<< orphan*/  recvpriv; int /*<<< orphan*/  xmitpriv; TYPE_1__ cmdpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ _FAIL ; 
 scalar_t__ _SUCCESS ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _module_os_intfs_c_ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct adapter*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct adapter*) ; 
 scalar_t__ FUNC5 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (struct adapter*) ; 
 scalar_t__ FUNC12 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC13 (struct adapter*) ; 

u8 FUNC14(struct adapter *padapter)
{
	u8 ret8 = _SUCCESS;

	FUNC1(_module_os_intfs_c_, _drv_info_, ("+rtw_init_drv_sw\n"));

	if ((FUNC10(&padapter->cmdpriv)) == _FAIL) {
		FUNC1(_module_os_intfs_c_, _drv_err_, ("\n Can't init cmd_priv\n"));
		ret8 = _FAIL;
		goto exit;
	}

	padapter->cmdpriv.padapter = padapter;

	if (FUNC12(padapter) == _FAIL) {
		FUNC1(_module_os_intfs_c_, _drv_err_, ("\n Can't init mlme_priv\n"));
		ret8 = _FAIL;
		goto exit;
	}

	if (FUNC5(padapter) == _FAIL) {
		FUNC1(_module_os_intfs_c_, _drv_err_, ("\n Can't init mlme_ext_priv\n"));
		ret8 = _FAIL;
		goto exit;
	}

	if (FUNC4(&padapter->xmitpriv, padapter) == _FAIL) {
		FUNC0("Can't _rtw_init_xmit_priv\n");
		ret8 = _FAIL;
		goto exit;
	}

	if (FUNC2(&padapter->recvpriv, padapter) == _FAIL) {
		FUNC0("Can't _rtw_init_recv_priv\n");
		ret8 = _FAIL;
		goto exit;
	}

	if (FUNC3(&padapter->stapriv) == _FAIL) {
		FUNC0("Can't _rtw_init_sta_priv\n");
		ret8 = _FAIL;
		goto exit;
	}

	padapter->stapriv.padapter = padapter;

	FUNC9(padapter);

	FUNC13(padapter);

	ret8 = FUNC11(padapter);

	FUNC6(padapter);
	FUNC8(padapter);

	FUNC7(padapter);

exit:
	FUNC1(_module_os_intfs_c_, _drv_info_, ("-rtw_init_drv_sw\n"));

	return ret8;
}