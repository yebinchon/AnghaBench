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
 int /*<<< orphan*/  WIFI_AP_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 int FUNC1 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 scalar_t__ FUNC4 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct adapter *padapter)
{
	struct mlme_priv *pmlmepriv;
	pmlmepriv = &(padapter->mlmepriv);

	if (FUNC1(pmlmepriv, WIFI_AP_STATE) == true) {
		FUNC2(padapter);
	}

	/* for debug purpose */
	FUNC0(padapter);


	/* if (check_fwstate(pmlmepriv, _FW_UNDER_LINKING|_FW_UNDER_SURVEY) ==false) */
	{
		FUNC5(padapter);
		FUNC8(padapter, 0);
	}

	FUNC6(padapter);

	/* check_hw_pbc(padapter, pdrvextra_cmd->pbuf, pdrvextra_cmd->type); */

	/*  */
	/*  BT-Coexist */
	/*  */
	FUNC3(padapter);


	/* always call rtw_ps_processor() at last one. */
	if (FUNC4(padapter))
		FUNC7(padapter);
}