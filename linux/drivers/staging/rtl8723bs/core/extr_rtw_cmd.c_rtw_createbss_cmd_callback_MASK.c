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
typedef  int /*<<< orphan*/  u8 ;
struct wlan_network {int /*<<< orphan*/  network; int /*<<< orphan*/  list; int /*<<< orphan*/  last_scanned; } ;
struct wlan_bssid_ex {int /*<<< orphan*/  Length; int /*<<< orphan*/  MacAddress; } ;
struct sta_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;
struct mlme_priv {int /*<<< orphan*/  lock; TYPE_1__ scanned_queue; int /*<<< orphan*/  assoc_timer; struct wlan_network cur_network; } ;
struct cmd_obj {scalar_t__ res; int /*<<< orphan*/ * parmbuf; } ;
struct adapter {int /*<<< orphan*/  stapriv; struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 scalar_t__ H2C_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  WIFI_AP_STATE ; 
 int /*<<< orphan*/  _FW_UNDER_LINKING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _module_rtl871x_cmd_c_ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wlan_bssid_ex*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct wlan_bssid_ex*,int /*<<< orphan*/ ) ; 
 struct wlan_network* FUNC8 (struct mlme_priv*) ; 
 struct sta_info* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct cmd_obj*) ; 
 struct wlan_network* FUNC11 (TYPE_1__*) ; 
 struct sta_info* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

void FUNC16(struct adapter *padapter, struct cmd_obj *pcmd)
{
	u8 timer_cancelled;
	struct sta_info *psta = NULL;
	struct wlan_network *pwlan = NULL;
	struct	mlme_priv *pmlmepriv = &padapter->mlmepriv;
	struct wlan_bssid_ex *pnetwork = (struct wlan_bssid_ex *)pcmd->parmbuf;
	struct wlan_network *tgt_network = &(pmlmepriv->cur_network);

	if (pcmd->parmbuf == NULL)
		goto exit;

	if ((pcmd->res != H2C_SUCCESS)) {
		FUNC0(_module_rtl871x_cmd_c_, _drv_err_, ("\n ********Error: rtw_createbss_cmd_callback  Fail ************\n\n."));
		FUNC3(&pmlmepriv->assoc_timer, 1);
	}

	FUNC1(&pmlmepriv->assoc_timer, &timer_cancelled);

	FUNC14(&pmlmepriv->lock);


	if (FUNC4(pmlmepriv, WIFI_AP_STATE)) {
		psta = FUNC12(&padapter->stapriv, pnetwork->MacAddress);
		if (!psta) {
			psta = FUNC9(&padapter->stapriv, pnetwork->MacAddress);
			if (psta == NULL) {
				FUNC0(_module_rtl871x_cmd_c_, _drv_err_, ("\nCan't alloc sta_info when createbss_cmd_callback\n"));
				goto createbss_cmd_fail;
			}
		}

		FUNC13(padapter);
	} else {
		pwlan = FUNC8(pmlmepriv);
		FUNC14(&(pmlmepriv->scanned_queue.lock));
		if (pwlan == NULL) {
			pwlan = FUNC11(&pmlmepriv->scanned_queue);
			if (pwlan == NULL) {
				FUNC0(_module_rtl871x_cmd_c_, _drv_err_, ("\n Error:  can't get pwlan in rtw_joinbss_event_callback\n"));
				FUNC15(&(pmlmepriv->scanned_queue.lock));
				goto createbss_cmd_fail;
			}
			pwlan->last_scanned = jiffies;
		} else {
			FUNC6(&(pwlan->list), &pmlmepriv->scanned_queue.queue);
		}

		pnetwork->Length = FUNC5(pnetwork);
		FUNC7(&(pwlan->network), pnetwork, pnetwork->Length);
		/* pwlan->fixed = true; */

		/* list_add_tail(&(pwlan->list), &pmlmepriv->scanned_queue.queue); */

		/*  copy pdev_network information to	pmlmepriv->cur_network */
		FUNC7(&tgt_network->network, pnetwork, (FUNC5(pnetwork)));

		/*  reset DSConfig */
		/* tgt_network->network.Configuration.DSConfig = (u32)rtw_ch2freq(pnetwork->Configuration.DSConfig); */

		FUNC2(pmlmepriv, _FW_UNDER_LINKING);

		FUNC15(&(pmlmepriv->scanned_queue.lock));
		/*  we will set _FW_LINKED when there is one more sat to join us (rtw_stassoc_event_callback) */

	}

createbss_cmd_fail:

	FUNC15(&pmlmepriv->lock);
exit:
	FUNC10(pcmd);
}