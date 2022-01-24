#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint ;
typedef  int /*<<< orphan*/  u8 ;
struct wlan_bssid_ex {int /*<<< orphan*/  MacAddress; } ;
struct sta_priv {int dummy; } ;
struct sta_info {int dummy; } ;
struct recv_frame {TYPE_1__* pkt; } ;
struct TYPE_8__ {int /*<<< orphan*/  network; } ;
struct mlme_priv {TYPE_4__ cur_network; } ;
struct TYPE_6__ {scalar_t__ state; } ;
struct mlme_ext_info {int state; TYPE_3__* FW_sta_info; struct wlan_bssid_ex network; int /*<<< orphan*/  assoc_AP_vendor; } ;
struct mlme_ext_priv {TYPE_2__ sitesurvey_res; struct mlme_ext_info mlmext_info; } ;
struct ieee80211_hdr_3addr {int dummy; } ;
struct adapter {struct sta_priv stapriv; struct mlme_priv mlmepriv; struct mlme_ext_priv mlmeextpriv; } ;
struct TYPE_7__ {scalar_t__ status; } ;
struct TYPE_5__ {int len; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int NUM_STA ; 
 scalar_t__ SCAN_PROCESS ; 
 int WIFI_FW_ADHOC_STATE ; 
 int WIFI_FW_ASSOC_SUCCESS ; 
 int WIFI_FW_AUTH_NULL ; 
 int WIFI_FW_STATION_STATE ; 
 int WLAN_HDR_A3_LEN ; 
 int _BEACON_IE_OFFSET_ ; 
 scalar_t__ _FAIL ; 
 unsigned int _SUCCESS ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC5 (struct adapter*,struct recv_frame*,struct wlan_bssid_ex*) ; 
 int /*<<< orphan*/  FUNC6 (struct wlan_bssid_ex*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*,struct recv_frame*) ; 
 int FUNC11 (struct adapter*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 struct sta_info* FUNC13 (struct sta_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 
 int FUNC15 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC16 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC17 (struct mlme_ext_priv*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (struct adapter*,int /*<<< orphan*/ *,int,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,struct wlan_bssid_ex*,struct adapter*,int) ; 
 scalar_t__ FUNC20 (struct adapter*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static unsigned int FUNC21(struct adapter *padapter,
			     struct recv_frame *precv_frame)
{
	int cam_idx;
	struct sta_info *psta;
	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
	struct sta_priv *pstapriv = &padapter->stapriv;
	u8 *pframe = precv_frame->pkt->data;
	uint len = precv_frame->pkt->len;
	struct wlan_bssid_ex *pbss;
	int ret = _SUCCESS;
	struct wlan_bssid_ex *pnetwork = &pmlmeinfo->network;

	if (pmlmeext->sitesurvey_res.state == SCAN_PROCESS) {
		FUNC10(padapter, precv_frame);
		return _SUCCESS;
	}

	if (!FUNC7(FUNC2(pframe), pnetwork->MacAddress, ETH_ALEN)) {
		if (pmlmeinfo->state & WIFI_FW_AUTH_NULL) {
			/* we should update current network before auth, or some IE is wrong */
			pbss = (struct wlan_bssid_ex *)FUNC14(sizeof(struct wlan_bssid_ex));
			if (pbss) {
				if (FUNC5(padapter, precv_frame, pbss) == _SUCCESS) {
					FUNC19(&pmlmepriv->cur_network.network, pbss, padapter, true);
					FUNC12(&pmlmepriv->cur_network);
				}
				FUNC6(pbss);
			}

			/* check the vendor of the assoc AP */
			pmlmeinfo->assoc_AP_vendor = FUNC4(pframe+sizeof(struct ieee80211_hdr_3addr), len-sizeof(struct ieee80211_hdr_3addr));

			/* update TSF Value */
			FUNC17(pmlmeext, pframe, len);

			/* start auth */
			FUNC16(padapter);

			return _SUCCESS;
		}

		if (((pmlmeinfo->state & 0x03) == WIFI_FW_STATION_STATE) && (pmlmeinfo->state & WIFI_FW_ASSOC_SUCCESS)) {
			psta = FUNC13(pstapriv, FUNC1(pframe));
			if (psta != NULL) {
				ret = FUNC11(padapter, pframe, len);
				if (!ret) {
						FUNC0(_drv_info_, "ap has changed, disconnect now\n ");
						FUNC8(padapter, pmlmeinfo->network.MacAddress, 65535);
						return _SUCCESS;
				}
				/* update WMM, ERP in the beacon */
				/* todo: the timer is used instead of the number of the beacon received */
				if ((FUNC15(psta) & 0xf) == 0)
					FUNC18(padapter, pframe, len, psta);
			}
		} else if ((pmlmeinfo->state & 0x03) == WIFI_FW_ADHOC_STATE) {
			psta = FUNC13(pstapriv, FUNC1(pframe));
			if (psta != NULL) {
				/* update WMM, ERP in the beacon */
				/* todo: the timer is used instead of the number of the beacon received */
				if ((FUNC15(psta) & 0xf) == 0)
					FUNC18(padapter, pframe, len, psta);
			} else {
				/* allocate a new CAM entry for IBSS station */
				cam_idx = FUNC3(padapter);
				if (cam_idx == NUM_STA)
					goto _END_ONBEACON_;

				/* get supported rate */
				if (FUNC20(padapter, (pframe + WLAN_HDR_A3_LEN + _BEACON_IE_OFFSET_), (len - WLAN_HDR_A3_LEN - _BEACON_IE_OFFSET_), cam_idx) == _FAIL) {
					pmlmeinfo->FW_sta_info[cam_idx].status = 0;
					goto _END_ONBEACON_;
				}

				/* update TSF Value */
				FUNC17(pmlmeext, pframe, len);

				/* report sta add event */
				FUNC9(padapter, FUNC1(pframe), cam_idx);
			}
		}
	}

_END_ONBEACON_:

	return _SUCCESS;
}