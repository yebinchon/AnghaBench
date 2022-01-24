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
typedef  int u8 ;
struct mlme_priv {int /*<<< orphan*/  lock; } ;
struct adapter {struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _FW_LINKED ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _module_rtl871x_ioctl_set_c_ ; 
 scalar_t__ FUNC1 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

u8 FUNC8(struct adapter *padapter)
{
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

	FUNC6(&pmlmepriv->lock);

	if (FUNC1(pmlmepriv, _FW_LINKED)) {
		FUNC0(_module_rtl871x_ioctl_set_c_, _drv_info_,
			 ("MgntActrtw_set_802_11_disassociate: rtw_indicate_disconnect\n"));

		FUNC2(padapter, 0, true);
		FUNC4(padapter);
		FUNC3(padapter);
		FUNC5(padapter);
	}

	FUNC7(&pmlmepriv->lock);

	return true;
}