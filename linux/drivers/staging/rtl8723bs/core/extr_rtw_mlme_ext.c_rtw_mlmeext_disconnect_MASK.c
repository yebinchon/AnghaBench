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
struct wlan_bssid_ex {int dummy; } ;
struct sta_info {int /*<<< orphan*/  mac_id; } ;
struct TYPE_2__ {scalar_t__ LowPowerTransitionCount; scalar_t__ TrafficTransitionCount; } ;
struct mlme_priv {TYPE_1__ LinkDetectInfo; } ;
struct mlme_ext_info {int /*<<< orphan*/  state; int /*<<< orphan*/  network; } ;
struct mlme_ext_priv {int /*<<< orphan*/  link_timer; int /*<<< orphan*/  cur_bwmode; int /*<<< orphan*/  cur_ch_offset; int /*<<< orphan*/  cur_channel; struct mlme_ext_info mlmext_info; } ;
struct adapter {int /*<<< orphan*/  stapriv; struct mlme_ext_priv mlmeextpriv; struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNEL_WIDTH_20 ; 
 int /*<<< orphan*/  HAL_PRIME_CHNL_OFFSET_DONT_CARE ; 
 int /*<<< orphan*/  HW_VAR_BSSID ; 
 int /*<<< orphan*/  HW_VAR_MLME_DISCONNECT ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIFI_FW_NULL_STATE ; 
 int /*<<< orphan*/  _HW_STATE_STATION_ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct wlan_bssid_ex*) ; 
 int /*<<< orphan*/ * null_addr ; 
 struct sta_info* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct adapter *padapter)
{
	struct mlme_priv 	*pmlmepriv = &padapter->mlmepriv;
	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
	struct wlan_bssid_ex		*pnetwork = (struct wlan_bssid_ex *)(&(pmlmeinfo->network));

	/* set_opmode_cmd(padapter, infra_client_with_mlme); */

	/*
	 * For safety, prevent from keeping macid sleep.
	 * If we can sure all power mode enter/leave are paired,
	 * this check can be removed.
	 * Lucas@20131113
	 */
	/* wakeup macid after disconnect. */
	{
		struct sta_info *psta;
		psta = FUNC4(&padapter->stapriv, FUNC3(pnetwork));
		if (psta)
			FUNC5(padapter, psta->mac_id);
	}

	FUNC6(padapter, HW_VAR_MLME_DISCONNECT, NULL);
	FUNC6(padapter, HW_VAR_BSSID, null_addr);

	/* set MSR to no link state -> infra. mode */
	FUNC0(padapter, _HW_STATE_STATION_);

	pmlmeinfo->state = WIFI_FW_NULL_STATE;

	/* switch to the 20M Hz mode after disconnect */
	pmlmeext->cur_bwmode = CHANNEL_WIDTH_20;
	pmlmeext->cur_ch_offset = HAL_PRIME_CHNL_OFFSET_DONT_CARE;

	FUNC7(padapter, pmlmeext->cur_channel, pmlmeext->cur_ch_offset, pmlmeext->cur_bwmode);

	FUNC2(padapter);

	FUNC1(&pmlmeext->link_timer);

	/* pmlmepriv->LinkDetectInfo.TrafficBusyState = false; */
	pmlmepriv->LinkDetectInfo.TrafficTransitionCount = 0;
	pmlmepriv->LinkDetectInfo.LowPowerTransitionCount = 0;

}