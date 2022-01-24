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
struct mlme_priv {int to_join; } ;
struct adapter {struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _FW_LINKED ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _module_rtl871x_mlme_c_ ; 
 int /*<<< orphan*/  FUNC1 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlme_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlme_priv*,int /*<<< orphan*/ ) ; 

void FUNC7(struct adapter *padapter)
{
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

	FUNC0(_module_rtl871x_mlme_c_, _drv_err_, ("+rtw_indicate_connect\n"));

	pmlmepriv->to_join = false;

	if (!FUNC1(&padapter->mlmepriv, _FW_LINKED)) {

		FUNC6(pmlmepriv, _FW_LINKED);

		FUNC3(padapter);
	}

	FUNC5(padapter, 0);
	FUNC4(padapter, 3000);

	FUNC0(_module_rtl871x_mlme_c_, _drv_err_, ("-rtw_indicate_connect: fw_state = 0x%08x\n", FUNC2(pmlmepriv)));
}