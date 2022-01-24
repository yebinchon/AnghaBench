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
struct mlme_priv {int dummy; } ;
struct adapter {struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPS_CTRL_DISCONNECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int WIFI_UNDER_WPS ; 
 int _FW_LINKED ; 
 int _FW_UNDER_LINKING ; 
 int /*<<< orphan*/  FUNC1 (struct mlme_priv*,int) ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _module_rtl871x_mlme_c_ ; 
 scalar_t__ FUNC2 (struct mlme_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int) ; 
 scalar_t__ FUNC7 (struct adapter*) ; 

void FUNC8(struct adapter *padapter)
{
	struct	mlme_priv *pmlmepriv = &padapter->mlmepriv;

	FUNC0(_module_rtl871x_mlme_c_, _drv_err_, ("+rtw_indicate_disconnect\n"));

	FUNC1(pmlmepriv, _FW_UNDER_LINKING|WIFI_UNDER_WPS);

	/* DBG_871X("clear wps when %s\n", __func__); */

	if (FUNC7(padapter) > 0)
		FUNC1(pmlmepriv, _FW_LINKED);

	if (FUNC2(&padapter->mlmepriv, _FW_LINKED)
		|| (FUNC7(padapter) <= 0)
	) {
		FUNC5(padapter);

		/* set ips_deny_time to avoid enter IPS before LPS leave */
		FUNC6(padapter, 3000);

		FUNC1(pmlmepriv, _FW_LINKED);

		FUNC3(padapter);
	}

	FUNC4(padapter, LPS_CTRL_DISCONNECT, 1);
}