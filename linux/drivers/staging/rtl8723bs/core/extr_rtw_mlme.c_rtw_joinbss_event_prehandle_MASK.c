#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_9__ {int Length; int /*<<< orphan*/  MacAddress; } ;
struct wlan_network {int join_res; int fixed; TYPE_4__ network; } ;
struct wlan_bssid_ex {int dummy; } ;
struct sta_priv {int dummy; } ;
struct sta_info {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {scalar_t__ LowPowerTransitionCount; scalar_t__ TrafficTransitionCount; } ;
struct TYPE_6__ {scalar_t__ SsidLength; int /*<<< orphan*/  Ssid; } ;
struct mlme_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  assoc_timer; TYPE_3__ scanned_queue; struct wlan_network* cur_network_scanned; TYPE_2__ LinkDetectInfo; TYPE_1__ assoc_ssid; struct wlan_network cur_network; } ;
struct adapter {struct mlme_priv mlmepriv; struct sta_priv stapriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int MAX_JOIN_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  WIFI_STATION_STATE ; 
 int _FAIL ; 
 int /*<<< orphan*/  _FW_LINKED ; 
 int /*<<< orphan*/  _FW_UNDER_LINKING ; 
 int _SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _drv_always_ ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _module_rtl871x_mlme_c_ ; 
 struct wlan_network* FUNC4 (TYPE_3__*,struct wlan_network*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mlme_priv*) ; 
 int FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int res ; 
 struct wlan_network* FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct adapter*) ; 
 struct sta_info* FUNC13 (struct sta_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC15 (struct adapter*,struct wlan_network*,struct wlan_network*) ; 
 struct sta_info* FUNC16 (struct adapter*,struct wlan_network*) ; 
 int /*<<< orphan*/  FUNC17 (struct adapter*) ; 
 int FUNC18 (struct mlme_priv*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

void FUNC21(struct adapter *adapter, u8 *pbuf)
{
	static u8 retry;
	u8 timer_cancelled;
	struct sta_info *ptarget_sta = NULL, *pcur_sta = NULL;
	struct	sta_priv *pstapriv = &adapter->stapriv;
	struct	mlme_priv *pmlmepriv = &(adapter->mlmepriv);
	struct wlan_network	*pnetwork	= (struct wlan_network *)pbuf;
	struct wlan_network	*cur_network = &(pmlmepriv->cur_network);
	struct wlan_network	*pcur_wlan = NULL, *ptarget_wlan = NULL;
	unsigned int		the_same_macaddr = false;

	FUNC1(_module_rtl871x_mlme_c_, _drv_info_, ("joinbss event call back received with res =%d\n", pnetwork->join_res));

	FUNC12(adapter);


	if (pmlmepriv->assoc_ssid.SsidLength == 0) {
		FUNC1(_module_rtl871x_mlme_c_, _drv_err_, ("@@@@@   joinbss event call back  for Any SSid\n"));
	} else {
		FUNC1(_module_rtl871x_mlme_c_, _drv_err_, ("@@@@@   rtw_joinbss_event_callback for SSid:%s\n", pmlmepriv->assoc_ssid.Ssid));
	}

	the_same_macaddr = !FUNC9(pnetwork->network.MacAddress, cur_network->network.MacAddress, ETH_ALEN);

	pnetwork->network.Length = FUNC8(&pnetwork->network);
	if (pnetwork->network.Length > sizeof(struct wlan_bssid_ex)) {
		FUNC1(_module_rtl871x_mlme_c_, _drv_err_, ("\n\n ***joinbss_evt_callback return a wrong bss ***\n\n"));
		return;
	}

	FUNC19(&pmlmepriv->lock);

	pmlmepriv->LinkDetectInfo.TrafficTransitionCount = 0;
	pmlmepriv->LinkDetectInfo.LowPowerTransitionCount = 0;

	FUNC1(_module_rtl871x_mlme_c_, _drv_info_, ("\n rtw_joinbss_event_callback !! spin_lock_irqsave\n"));

	if (pnetwork->join_res > 0) {
		FUNC19(&(pmlmepriv->scanned_queue.lock));
		retry = 0;
		if (FUNC6(pmlmepriv, _FW_UNDER_LINKING)) {
			/* s1. find ptarget_wlan */
			if (FUNC6(pmlmepriv, _FW_LINKED)) {
				if (the_same_macaddr == true) {
					ptarget_wlan = FUNC10(&pmlmepriv->scanned_queue, cur_network->network.MacAddress);
				} else {
					pcur_wlan = FUNC10(&pmlmepriv->scanned_queue, cur_network->network.MacAddress);
					if (pcur_wlan)
						pcur_wlan->fixed = false;

					pcur_sta = FUNC13(pstapriv, cur_network->network.MacAddress);
					if (pcur_sta)
						FUNC11(adapter,  pcur_sta);

					ptarget_wlan = FUNC10(&pmlmepriv->scanned_queue, pnetwork->network.MacAddress);
					if (FUNC6(pmlmepriv, WIFI_STATION_STATE) == true) {
						if (ptarget_wlan)
							ptarget_wlan->fixed = true;
					}
				}

			} else {
				ptarget_wlan = FUNC4(&pmlmepriv->scanned_queue, pnetwork);
				if (FUNC6(pmlmepriv, WIFI_STATION_STATE) == true) {
					if (ptarget_wlan)
						ptarget_wlan->fixed = true;
				}
			}

			/* s2. update cur_network */
			if (ptarget_wlan) {
				FUNC15(adapter, ptarget_wlan, pnetwork);
			} else {
				FUNC0(_drv_always_, "Can't find ptarget_wlan when joinbss_event callback\n");
				FUNC20(&(pmlmepriv->scanned_queue.lock));
				goto ignore_joinbss_callback;
			}


			/* s3. find ptarget_sta & update ptarget_sta after update cur_network only for station mode */
			if (FUNC6(pmlmepriv, WIFI_STATION_STATE) == true) {
				ptarget_sta = FUNC16(adapter, pnetwork);
				if (ptarget_sta == NULL) {
					FUNC1(_module_rtl871x_mlme_c_, _drv_err_, ("Can't update stainfo when joinbss_event callback\n"));
					FUNC20(&(pmlmepriv->scanned_queue.lock));
					goto ignore_joinbss_callback;
				}
			}

			/* s4. indicate connect */
			if (FUNC6(pmlmepriv, WIFI_STATION_STATE) == true) {
				pmlmepriv->cur_network_scanned = ptarget_wlan;
				FUNC14(adapter);
			} else {
				/* adhoc mode will rtw_indicate_connect when rtw_stassoc_event_callback */
				FUNC1(_module_rtl871x_mlme_c_, _drv_info_, ("adhoc mode, fw_state:%x", FUNC7(pmlmepriv)));
			}


			/* s5. Cancel assoc_timer */
			FUNC2(&pmlmepriv->assoc_timer, &timer_cancelled);

			FUNC1(_module_rtl871x_mlme_c_, _drv_info_, ("Cancel assoc_timer\n"));

		} else {
			FUNC1(_module_rtl871x_mlme_c_, _drv_err_, ("rtw_joinbss_event_callback err: fw_state:%x", FUNC7(pmlmepriv)));
			FUNC20(&(pmlmepriv->scanned_queue.lock));
			goto ignore_joinbss_callback;
		}

		FUNC20(&(pmlmepriv->scanned_queue.lock));

	} else if (pnetwork->join_res == -4) {
		FUNC17(adapter);
		FUNC5(&pmlmepriv->assoc_timer, 1);

		/* rtw_free_assoc_resources(adapter, 1); */

		if ((FUNC6(pmlmepriv, _FW_UNDER_LINKING)) == true) {
			FUNC1(_module_rtl871x_mlme_c_, _drv_err_, ("fail! clear _FW_UNDER_LINKING ^^^fw_state =%x\n", FUNC7(pmlmepriv)));
			FUNC3(pmlmepriv, _FW_UNDER_LINKING);
		}

	} else {/* if join_res < 0 (join fails), then try again */

		#ifdef REJOIN
		res = _FAIL;
		if (retry < 2) {
			res = rtw_select_and_join_from_scanned_queue(pmlmepriv);
			RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("rtw_select_and_join_from_scanned_queue again! res:%d\n", res));
		}

		if (res == _SUCCESS) {
			/* extend time of assoc_timer */
			_set_timer(&pmlmepriv->assoc_timer, MAX_JOIN_TIMEOUT);
			retry++;
		} else if (res == 2) {/* there is no need to wait for join */
			_clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);
			rtw_indicate_connect(adapter);
		} else {
			RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("Set Assoc_Timer = 1; can't find match ssid in scanned_q\n"));
		#endif

			FUNC5(&pmlmepriv->assoc_timer, 1);
			/* rtw_free_assoc_resources(adapter, 1); */
			FUNC3(pmlmepriv, _FW_UNDER_LINKING);

		#ifdef REJOIN
			retry = 0;
		}
		#endif
	}

ignore_joinbss_callback:

	FUNC20(&pmlmepriv->lock);
}