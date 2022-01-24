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
struct TYPE_6__ {int bBusyTraffic; } ;
struct __queue {int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;
struct TYPE_4__ {int join_res; } ;
struct mlme_priv {int to_join; int /*<<< orphan*/  assoc_ssid; TYPE_3__ LinkDetectInfo; int /*<<< orphan*/  fw_state; int /*<<< orphan*/  assoc_timer; struct __queue scanned_queue; struct list_head* pscanned; TYPE_1__ cur_network; } ;
struct list_head {int dummy; } ;
struct TYPE_5__ {struct wlan_bssid_ex dev_network; } ;
struct adapter {TYPE_2__ registrypriv; struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_JOIN_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  WIFI_ADHOC_MASTER_STATE ; 
 int /*<<< orphan*/  WIFI_ADHOC_STATE ; 
 int _FAIL ; 
 int /*<<< orphan*/  _FW_UNDER_LINKING ; 
 int _SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _module_rtl871x_ioctl_set_c_ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 struct list_head* FUNC4 (struct __queue*) ; 
 struct list_head* FUNC5 (struct list_head*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 
 int FUNC10 (struct mlme_priv*) ; 
 int FUNC11 (struct adapter*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC13 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC14 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

u8 FUNC17(struct adapter *padapter)
{
	struct list_head	*plist, *phead;
	u8 *pibss = NULL;
	struct	mlme_priv *pmlmepriv = &(padapter->mlmepriv);
	struct __queue	*queue	= &(pmlmepriv->scanned_queue);
	u8 ret = _SUCCESS;

	FUNC15(&(pmlmepriv->scanned_queue.lock));
	phead = FUNC4(queue);
	plist = FUNC5(phead);

	FUNC0(_module_rtl871x_ioctl_set_c_, _drv_info_, ("\n rtw_do_join: phead = %p; plist = %p\n\n\n", phead, plist));

	pmlmepriv->cur_network.join_res = -2;

	FUNC14(pmlmepriv, _FW_UNDER_LINKING);

	pmlmepriv->pscanned = plist;

	pmlmepriv->to_join = true;

	if (FUNC6(&queue->queue)) {
		FUNC16(&(pmlmepriv->scanned_queue.lock));
		FUNC1(pmlmepriv, _FW_UNDER_LINKING);

		/* when set_ssid/set_bssid for rtw_do_join(), but scanning queue is empty */
		/* we try to issue sitesurvey firstly */

		if (pmlmepriv->LinkDetectInfo.bBusyTraffic == false
			|| FUNC12(padapter) > 0
		) {
			FUNC0(_module_rtl871x_ioctl_set_c_, _drv_info_, ("rtw_do_join(): site survey if scanned_queue is empty\n."));
			/*  submit site_survey_cmd */
			ret = FUNC11(padapter, &pmlmepriv->assoc_ssid, 1, NULL, 0);
			if (_SUCCESS != ret) {
				pmlmepriv->to_join = false;
				FUNC0(_module_rtl871x_ioctl_set_c_, _drv_err_, ("rtw_do_join(): site survey return error\n."));
			}
		} else {
			pmlmepriv->to_join = false;
			ret = _FAIL;
		}

		goto exit;
	} else {
		int select_ret;
		FUNC16(&(pmlmepriv->scanned_queue.lock));
		select_ret = FUNC10(pmlmepriv);
		if (select_ret == _SUCCESS) {
			pmlmepriv->to_join = false;
			FUNC2(&pmlmepriv->assoc_timer, MAX_JOIN_TIMEOUT);
		} else {
			if (FUNC3(pmlmepriv, WIFI_ADHOC_STATE) == true) {
				/*  submit createbss_cmd to change to a ADHOC_MASTER */

				/* pmlmepriv->lock has been acquired by caller... */
				struct wlan_bssid_ex    *pdev_network = &(padapter->registrypriv.dev_network);

				pmlmepriv->fw_state = WIFI_ADHOC_MASTER_STATE;

				pibss = padapter->registrypriv.dev_network.MacAddress;

				FUNC7(&pdev_network->Ssid, &pmlmepriv->assoc_ssid, sizeof(struct ndis_802_11_ssid));

				FUNC13(padapter);

				FUNC9(pibss);

				if (FUNC8(padapter) != _SUCCESS) {
					FUNC0(_module_rtl871x_ioctl_set_c_, _drv_err_, ("***Error =>do_goin: rtw_createbss_cmd status FAIL***\n "));
					ret =  false;
					goto exit;
				}

				pmlmepriv->to_join = false;

				FUNC0(_module_rtl871x_ioctl_set_c_, _drv_info_, ("***Error => rtw_select_and_join_from_scanned_queue FAIL under STA_Mode***\n "));

			} else {
				/*  can't associate ; reset under-linking */
				FUNC1(pmlmepriv, _FW_UNDER_LINKING);

				/* when set_ssid/set_bssid for rtw_do_join(), but there are no desired bss in scanning queue */
				/* we try to issue sitesurvey firstly */
				if (pmlmepriv->LinkDetectInfo.bBusyTraffic == false
					|| FUNC12(padapter) > 0
				) {
					/* DBG_871X("rtw_do_join() when   no desired bss in scanning queue\n"); */
					ret = FUNC11(padapter, &pmlmepriv->assoc_ssid, 1, NULL, 0);
					if (_SUCCESS != ret) {
						pmlmepriv->to_join = false;
						FUNC0(_module_rtl871x_ioctl_set_c_, _drv_err_, ("do_join(): site survey return error\n."));
					}
				} else {
					ret = _FAIL;
					pmlmepriv->to_join = false;
				}
			}

		}

	}

exit:
	return ret;
}