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
typedef  int u8 ;
struct wlan_bssid_ex {int* MacAddress; int /*<<< orphan*/  Ssid; } ;
struct ndis_802_11_ssid {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  MacAddress; } ;
struct TYPE_6__ {TYPE_2__ network; } ;
struct mlme_priv {int to_join; int /*<<< orphan*/  lock; TYPE_3__ cur_network; int /*<<< orphan*/  assoc_ssid; int /*<<< orphan*/  assoc_timer; int /*<<< orphan*/  fw_state; int /*<<< orphan*/  scan_to_timer; int /*<<< orphan*/ * wps_probe_req_ie; scalar_t__ wps_probe_req_ie_len; } ;
struct TYPE_4__ {struct wlan_bssid_ex dev_network; } ;
struct adapter {TYPE_1__ registrypriv; int /*<<< orphan*/  recvpriv; struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  MAX_JOIN_TIMEOUT ; 
 int /*<<< orphan*/  RTW_ROAM_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  WIFI_ADHOC_MASTER_STATE ; 
 int /*<<< orphan*/  WIFI_ADHOC_STATE ; 
 int /*<<< orphan*/  WIFI_STATION_STATE ; 
 int /*<<< orphan*/  WLAN_REASON_ACTIVE_ROAM ; 
 int /*<<< orphan*/  _FW_LINKED ; 
 int /*<<< orphan*/  _FW_UNDER_LINKING ; 
 int /*<<< orphan*/  _FW_UNDER_SURVEY ; 
 int _SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _module_rtl871x_mlme_c_ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlme_priv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*) ; 
 scalar_t__ FUNC11 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct adapter*) ; 
 scalar_t__ FUNC13 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC14 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC15 (int*) ; 
 int /*<<< orphan*/  FUNC16 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC17 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC18 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct adapter*) ; 
 int FUNC20 (struct mlme_priv*) ; 
 int FUNC21 (struct mlme_priv*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC24 (struct adapter*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC26 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC27 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 

void FUNC30(struct adapter	*adapter, u8 *pbuf)
{
	u8 timer_cancelled = false;
	struct	mlme_priv *pmlmepriv = &(adapter->mlmepriv);

	FUNC28(&pmlmepriv->lock);
	if (pmlmepriv->wps_probe_req_ie) {
		pmlmepriv->wps_probe_req_ie_len = 0;
		FUNC7(pmlmepriv->wps_probe_req_ie);
		pmlmepriv->wps_probe_req_ie = NULL;
	}

	FUNC1(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_surveydone_event_callback: fw_state:%x\n\n", FUNC6(pmlmepriv)));

	if (FUNC5(pmlmepriv, _FW_UNDER_SURVEY)) {
		/* u8 timer_cancelled; */

		timer_cancelled = true;
		/* _cancel_timer(&pmlmepriv->scan_to_timer, &timer_cancelled); */

		FUNC3(pmlmepriv, _FW_UNDER_SURVEY);
	} else {

		FUNC1(_module_rtl871x_mlme_c_, _drv_err_, ("nic status =%x, survey done event comes too late!\n", FUNC6(pmlmepriv)));
	}
	FUNC29(&pmlmepriv->lock);

	if (timer_cancelled)
		FUNC2(&pmlmepriv->scan_to_timer, &timer_cancelled);


	FUNC28(&pmlmepriv->lock);

	FUNC22(&adapter->recvpriv);

	if (pmlmepriv->to_join == true) {
		if ((FUNC5(pmlmepriv, WIFI_ADHOC_STATE) == true)) {
			if (FUNC5(pmlmepriv, _FW_LINKED) == false) {
				FUNC27(pmlmepriv, _FW_UNDER_LINKING);

				if (FUNC20(pmlmepriv) == _SUCCESS) {
					FUNC4(&pmlmepriv->assoc_timer, MAX_JOIN_TIMEOUT);
				} else {
					struct wlan_bssid_ex    *pdev_network = &(adapter->registrypriv.dev_network);
					u8 *pibss = adapter->registrypriv.dev_network.MacAddress;

					/* pmlmepriv->fw_state ^= _FW_UNDER_SURVEY;because don't set assoc_timer */
					FUNC3(pmlmepriv, _FW_UNDER_SURVEY);

					FUNC1(_module_rtl871x_mlme_c_, _drv_err_, ("switching to adhoc master\n"));

					FUNC8(&pdev_network->Ssid, &pmlmepriv->assoc_ssid, sizeof(struct ndis_802_11_ssid));

					FUNC26(adapter);
					FUNC15(pibss);

					pmlmepriv->fw_state = WIFI_ADHOC_MASTER_STATE;

					if (FUNC12(adapter) != _SUCCESS) {
					FUNC1(_module_rtl871x_mlme_c_, _drv_err_, ("Error =>rtw_createbss_cmd status FAIL\n"));
					}

					pmlmepriv->to_join = false;
				}
			}
		} else {
			int s_ret;
			FUNC27(pmlmepriv, _FW_UNDER_LINKING);
			pmlmepriv->to_join = false;
			s_ret = FUNC20(pmlmepriv);
			if (_SUCCESS == s_ret) {
			     FUNC4(&pmlmepriv->assoc_timer, MAX_JOIN_TIMEOUT);
			} else if (s_ret == 2) {/* there is no need to wait for join */
				FUNC3(pmlmepriv, _FW_UNDER_LINKING);
				FUNC16(adapter);
			} else {
				FUNC0("try_to_join, but select scanning queue fail, to_roam:%d\n", FUNC25(adapter));

				if (FUNC25(adapter) != 0) {
					if (FUNC13(adapter) == 0
						|| _SUCCESS != FUNC24(adapter, &pmlmepriv->assoc_ssid, 1, NULL, 0)
					) {
						FUNC23(adapter, 0);
						FUNC14(adapter, 1);
						FUNC17(adapter);
					} else {
						pmlmepriv->to_join = true;
					}
				} else
					FUNC17(adapter);

				FUNC3(pmlmepriv, _FW_UNDER_LINKING);
			}
		}
	} else {
		if (FUNC11(adapter, RTW_ROAM_ACTIVE)) {
			if (FUNC5(pmlmepriv, WIFI_STATION_STATE)
				&& FUNC5(pmlmepriv, _FW_LINKED)) {
				if (FUNC21(pmlmepriv) == _SUCCESS) {
					FUNC9(adapter, pmlmepriv->cur_network.network.MacAddress
						, WLAN_REASON_ACTIVE_ROAM);
				}
			}
		}
	}

	/* DBG_871X("scan complete in %dms\n", jiffies_to_msecs(jiffies - pmlmepriv->scan_start_time)); */

	FUNC29(&pmlmepriv->lock);

	FUNC19(adapter);

	FUNC10(adapter);

	FUNC18(adapter, false);
}