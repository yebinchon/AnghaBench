#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_6__ {int Length; int /*<<< orphan*/  MacAddress; } ;
struct wlan_network {int join_res; int fixed; TYPE_3__ network; } ;
struct wlan_bssid_ex {int dummy; } ;
struct sta_priv {int /*<<< orphan*/  sta_hash_lock; } ;
struct sta_info {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {scalar_t__ ssid_length; int /*<<< orphan*/  ssid; } ;
struct mlme_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  assoc_timer; TYPE_2__ scanned_queue; TYPE_1__ assoc_ssid; struct wlan_network cur_network; } ;
struct adapter {struct mlme_priv mlmepriv; struct sta_priv stapriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  WIFI_STATION_STATE ; 
 int /*<<< orphan*/  _FW_LINKED ; 
 int /*<<< orphan*/  _FW_UNDER_LINKING ; 
 int /*<<< orphan*/  FUNC1 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _module_rtl871x_mlme_c_ ; 
 scalar_t__ FUNC2 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mlme_priv*) ; 
 int FUNC5 (TYPE_3__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (int) ; 
 struct wlan_network* FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*) ; 
 struct sta_info* FUNC12 (struct sta_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC14 (struct adapter*,struct wlan_network*,struct wlan_network*) ; 
 struct sta_info* FUNC15 (struct adapter*,struct wlan_network*) ; 
 int /*<<< orphan*/  FUNC16 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

void FUNC19(struct adapter *adapter, u8 *pbuf)
{
	struct sta_info *ptarget_sta = NULL, *pcur_sta = NULL;
	struct sta_priv *pstapriv = &adapter->stapriv;
	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
	struct wlan_network *pnetwork = (struct wlan_network *)pbuf;
	struct wlan_network *cur_network = &pmlmepriv->cur_network;
	struct wlan_network *pcur_wlan = NULL, *ptarget_wlan = NULL;
	unsigned int the_same_macaddr = false;

	FUNC0(_module_rtl871x_mlme_c_, _drv_info_, ("joinbss event call back received with res=%d\n", pnetwork->join_res));

	FUNC11(adapter);

	if (pmlmepriv->assoc_ssid.ssid_length == 0)
		FUNC0(_module_rtl871x_mlme_c_, _drv_err_, ("@@@@@   joinbss event call back  for Any SSid\n"));
	else
		FUNC0(_module_rtl871x_mlme_c_, _drv_err_, ("@@@@@   rtw_joinbss_event_callback for SSid:%s\n", pmlmepriv->assoc_ssid.ssid));

	the_same_macaddr = !FUNC6(pnetwork->network.MacAddress, cur_network->network.MacAddress, ETH_ALEN);

	pnetwork->network.Length = FUNC5(&pnetwork->network);
	if (pnetwork->network.Length > sizeof(struct wlan_bssid_ex)) {
		FUNC0(_module_rtl871x_mlme_c_, _drv_err_, ("\n\n ***joinbss_evt_callback return a wrong bss ***\n\n"));
		return;
	}

	FUNC17(&pmlmepriv->lock);

	FUNC0(_module_rtl871x_mlme_c_, _drv_info_, ("\nrtw_joinbss_event_callback!! _enter_critical\n"));

	if (pnetwork->join_res > 0) {
		FUNC17(&pmlmepriv->scanned_queue.lock);
		if (FUNC2(pmlmepriv, _FW_UNDER_LINKING)) {
			/* s1. find ptarget_wlan */
			if (FUNC2(pmlmepriv, _FW_LINKED)) {
				if (the_same_macaddr) {
					ptarget_wlan = FUNC9(&pmlmepriv->scanned_queue, cur_network->network.MacAddress);
				} else {
					pcur_wlan = FUNC9(&pmlmepriv->scanned_queue, cur_network->network.MacAddress);
					if (pcur_wlan)
						pcur_wlan->fixed = false;

					pcur_sta = FUNC12(pstapriv, cur_network->network.MacAddress);
					if (pcur_sta) {
						FUNC17(&pstapriv->sta_hash_lock);
						FUNC10(adapter,  pcur_sta);
						FUNC18(&pstapriv->sta_hash_lock);
					}

					ptarget_wlan = FUNC9(&pmlmepriv->scanned_queue, pnetwork->network.MacAddress);
					if (FUNC2(pmlmepriv, WIFI_STATION_STATE)) {
						if (ptarget_wlan)
							ptarget_wlan->fixed = true;
					}
				}
			} else {
				ptarget_wlan = FUNC9(&pmlmepriv->scanned_queue, pnetwork->network.MacAddress);
				if (FUNC2(pmlmepriv, WIFI_STATION_STATE)) {
					if (ptarget_wlan)
						ptarget_wlan->fixed = true;
				}
			}

			/* s2. update cur_network */
			if (ptarget_wlan) {
				FUNC14(adapter, ptarget_wlan, pnetwork);
			} else {
				FUNC0(_module_rtl871x_mlme_c_, _drv_err_, ("Can't find ptarget_wlan when joinbss_event callback\n"));
				FUNC18(&pmlmepriv->scanned_queue.lock);
				goto ignore_joinbss_callback;
			}

			/* s3. find ptarget_sta & update ptarget_sta after update cur_network only for station mode */
			if (FUNC2(pmlmepriv, WIFI_STATION_STATE)) {
				ptarget_sta = FUNC15(adapter, pnetwork);
				if (!ptarget_sta) {
					FUNC0(_module_rtl871x_mlme_c_, _drv_err_, ("Can't update stainfo when joinbss_event callback\n"));
					FUNC18(&pmlmepriv->scanned_queue.lock);
					goto ignore_joinbss_callback;
				}
			}

			/* s4. indicate connect */
			if (FUNC2(pmlmepriv, WIFI_STATION_STATE)) {
				FUNC13(adapter);
			} else {
				/* adhoc mode will rtw_indicate_connect when rtw_stassoc_event_callback */
				FUNC0(_module_rtl871x_mlme_c_, _drv_info_, ("adhoc mode, fw_state:%x", FUNC4(pmlmepriv)));
			}

			/* s5. Cancel assoc_timer */
			FUNC3(&pmlmepriv->assoc_timer);

			FUNC0(_module_rtl871x_mlme_c_, _drv_info_, ("Cancel assoc_timer\n"));

		} else {
			FUNC0(_module_rtl871x_mlme_c_, _drv_err_, ("rtw_joinbss_event_callback err: fw_state:%x", FUNC4(pmlmepriv)));
			FUNC18(&pmlmepriv->scanned_queue.lock);
			goto ignore_joinbss_callback;
		}

		FUNC18(&pmlmepriv->scanned_queue.lock);

	} else if (pnetwork->join_res == -4) {
		FUNC16(adapter);
		FUNC7(&pmlmepriv->assoc_timer,
			  jiffies + FUNC8(1));

		if (FUNC2(pmlmepriv, _FW_UNDER_LINKING)) {
			FUNC0(_module_rtl871x_mlme_c_, _drv_err_, ("fail! clear _FW_UNDER_LINKING ^^^fw_state=%x\n", FUNC4(pmlmepriv)));
			FUNC1(pmlmepriv, _FW_UNDER_LINKING);
		}
	} else { /* if join_res < 0 (join fails), then try again */
		FUNC7(&pmlmepriv->assoc_timer,
			  jiffies + FUNC8(1));
		FUNC1(pmlmepriv, _FW_UNDER_LINKING);
	}

ignore_joinbss_callback:
	FUNC18(&pmlmepriv->lock);
}