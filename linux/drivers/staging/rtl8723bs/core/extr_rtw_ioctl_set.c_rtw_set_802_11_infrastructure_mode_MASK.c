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
typedef  int u8 ;
struct TYPE_2__ {int InfrastructureMode; } ;
struct wlan_network {int join_res; TYPE_1__ network; } ;
struct mlme_priv {int /*<<< orphan*/  lock; struct wlan_network cur_network; } ;
struct adapter {struct mlme_priv mlmepriv; } ;
typedef  enum NDIS_802_11_NETWORK_INFRASTRUCTURE { ____Placeholder_NDIS_802_11_NETWORK_INFRASTRUCTURE } NDIS_802_11_NETWORK_INFRASTRUCTURE ;

/* Variables and functions */
#define  Ndis802_11APMode 132 
#define  Ndis802_11AutoUnknown 131 
#define  Ndis802_11IBSS 130 
#define  Ndis802_11Infrastructure 129 
#define  Ndis802_11InfrastructureMax 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  WIFI_ADHOC_MASTER_STATE ; 
 int /*<<< orphan*/  WIFI_ADHOC_STATE ; 
 int /*<<< orphan*/  WIFI_AP_STATE ; 
 int /*<<< orphan*/  WIFI_NULL_STATE ; 
 int /*<<< orphan*/  WIFI_STATION_STATE ; 
 int /*<<< orphan*/  _FW_LINKED ; 
 int /*<<< orphan*/  FUNC1 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _drv_notice_ ; 
 int /*<<< orphan*/  _module_rtl871x_ioctl_set_c_ ; 
 int FUNC2 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlme_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*) ; 

u8 FUNC12(struct adapter *padapter,
	enum NDIS_802_11_NETWORK_INFRASTRUCTURE networktype)
{
	struct	mlme_priv *pmlmepriv = &padapter->mlmepriv;
	struct	wlan_network	*cur_network = &pmlmepriv->cur_network;
	enum NDIS_802_11_NETWORK_INFRASTRUCTURE *pold_state = &(cur_network->network.InfrastructureMode);

	FUNC0(_module_rtl871x_ioctl_set_c_, _drv_notice_,
		 ("+rtw_set_802_11_infrastructure_mode: old =%d new =%d fw_state = 0x%08x\n",
		  *pold_state, networktype, FUNC3(pmlmepriv)));

	if (*pold_state != networktype) {
		FUNC0(_module_rtl871x_ioctl_set_c_, _drv_info_, (" change mode!"));
		/* DBG_871X("change mode, old_mode =%d, new_mode =%d, fw_state = 0x%x\n", *pold_state, networktype, get_fwstate(pmlmepriv)); */

		if (*pold_state == Ndis802_11APMode) {
			/* change to other mode from Ndis802_11APMode */
			cur_network->join_res = -1;

			FUNC11(padapter);
		}

		FUNC8(&pmlmepriv->lock);

		if ((FUNC2(pmlmepriv, _FW_LINKED) == true) || (*pold_state == Ndis802_11IBSS))
			FUNC4(padapter, 0, true);

		if ((FUNC2(pmlmepriv, _FW_LINKED) == true) ||
			(FUNC2(pmlmepriv, WIFI_ADHOC_MASTER_STATE) == true))
			FUNC5(padapter, 1);

		if ((*pold_state == Ndis802_11Infrastructure) || (*pold_state == Ndis802_11IBSS)) {
			if (FUNC2(pmlmepriv, _FW_LINKED) == true) {
				FUNC6(padapter); /* will clr Linked_state; before this function, we must have chked whether  issue dis-assoc_cmd or not */
			}
	       }

		*pold_state = networktype;

		FUNC1(pmlmepriv, ~WIFI_NULL_STATE);

		switch (networktype) {
		case Ndis802_11IBSS:
			FUNC7(pmlmepriv, WIFI_ADHOC_STATE);
			break;

		case Ndis802_11Infrastructure:
			FUNC7(pmlmepriv, WIFI_STATION_STATE);
			break;

		case Ndis802_11APMode:
			FUNC7(pmlmepriv, WIFI_AP_STATE);
			FUNC10(padapter);
			/* rtw_indicate_connect(padapter); */

			break;

		case Ndis802_11AutoUnknown:
		case Ndis802_11InfrastructureMax:
			break;
		}

		/* SecClearAllKeys(adapter); */

		/* RT_TRACE(COMP_OID_SET, DBG_LOUD, ("set_infrastructure: fw_state:%x after changing mode\n", */
		/* 									get_fwstate(pmlmepriv))); */

		FUNC9(&pmlmepriv->lock);
	}
	return true;
}