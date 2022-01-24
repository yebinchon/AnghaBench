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
struct wlan_network {int fixed; int /*<<< orphan*/  network; int /*<<< orphan*/  list; scalar_t__ last_scanned; } ;
struct TYPE_6__ {void* Length; void* HopSet; void* HopPattern; void* DwellTime; } ;
struct TYPE_7__ {void* Length; TYPE_2__ FHConfig; void* DSConfig; void* ATIMWindow; } ;
struct TYPE_5__ {void* SsidLength; } ;
struct wlan_bssid_ex {void* Length; int /*<<< orphan*/  MacAddress; void* IELength; void* InfrastructureMode; TYPE_3__ Configuration; void* NetworkTypeInUse; void* Rssi; void* Privacy; TYPE_1__ Ssid; } ;
struct sta_info {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  queue; } ;
struct mlme_priv {int fw_state; int /*<<< orphan*/  lock; TYPE_4__ scanned_queue; int /*<<< orphan*/  assoc_timer; struct wlan_network cur_network; } ;
struct cmd_obj {scalar_t__ res; scalar_t__ parmbuf; } ;
struct _adapter {int /*<<< orphan*/  stapriv; struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 scalar_t__ H2C_SUCCESS ; 
 int WIFI_AP_STATE ; 
 int _FW_UNDER_LINKING ; 
 struct wlan_network* FUNC0 (struct mlme_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 void* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct wlan_bssid_ex*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int) ; 
 struct sta_info* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cmd_obj*) ; 
 struct wlan_network* FUNC9 (TYPE_4__*) ; 
 struct sta_info* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC11 (struct wlan_bssid_ex*) ; 
 int /*<<< orphan*/  FUNC12 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC15(struct _adapter *padapter,
				  struct cmd_obj *pcmd)
{
	unsigned long irqL;
	struct sta_info *psta = NULL;
	struct wlan_network *pwlan = NULL;
	struct	mlme_priv *pmlmepriv = &padapter->mlmepriv;
	struct wlan_bssid_ex *pnetwork = (struct wlan_bssid_ex *)pcmd->parmbuf;
	struct wlan_network *tgt_network = &(pmlmepriv->cur_network);

	if (pcmd->res != H2C_SUCCESS)
		FUNC5(&pmlmepriv->assoc_timer,
			  jiffies + FUNC6(1));
	FUNC1(&pmlmepriv->assoc_timer);
#ifdef __BIG_ENDIAN
	/* endian_convert */
	pnetwork->Length = le32_to_cpu(pnetwork->Length);
	pnetwork->Ssid.SsidLength = le32_to_cpu(pnetwork->Ssid.SsidLength);
	pnetwork->Privacy = le32_to_cpu(pnetwork->Privacy);
	pnetwork->Rssi = le32_to_cpu(pnetwork->Rssi);
	pnetwork->NetworkTypeInUse = le32_to_cpu(pnetwork->NetworkTypeInUse);
	pnetwork->Configuration.ATIMWindow =
		le32_to_cpu(pnetwork->Configuration.ATIMWindow);
	pnetwork->Configuration.DSConfig =
		le32_to_cpu(pnetwork->Configuration.DSConfig);
	pnetwork->Configuration.FHConfig.DwellTime =
		le32_to_cpu(pnetwork->Configuration.FHConfig.DwellTime);
	pnetwork->Configuration.FHConfig.HopPattern =
		le32_to_cpu(pnetwork->Configuration.FHConfig.HopPattern);
	pnetwork->Configuration.FHConfig.HopSet =
		le32_to_cpu(pnetwork->Configuration.FHConfig.HopSet);
	pnetwork->Configuration.FHConfig.Length =
		le32_to_cpu(pnetwork->Configuration.FHConfig.Length);
	pnetwork->Configuration.Length =
		le32_to_cpu(pnetwork->Configuration.Length);
	pnetwork->InfrastructureMode =
		le32_to_cpu(pnetwork->InfrastructureMode);
	pnetwork->IELength = le32_to_cpu(pnetwork->IELength);
#endif
	FUNC13(&pmlmepriv->lock, irqL);
	if ((pmlmepriv->fw_state) & WIFI_AP_STATE) {
		psta = FUNC10(&padapter->stapriv,
					 pnetwork->MacAddress);
		if (!psta) {
			psta = FUNC7(&padapter->stapriv,
						   pnetwork->MacAddress);
			if (!psta)
				goto createbss_cmd_fail;
		}
		FUNC12(padapter);
	} else {
		pwlan = FUNC0(pmlmepriv);
		if (!pwlan) {
			pwlan = FUNC9(
				&pmlmepriv->scanned_queue);
			if (!pwlan)
				goto createbss_cmd_fail;
			pwlan->last_scanned = jiffies;
		} else {
			FUNC3(&(pwlan->list),
					 &pmlmepriv->scanned_queue.queue);
		}
		pnetwork->Length = FUNC11(pnetwork);
		FUNC4(&(pwlan->network), pnetwork, pnetwork->Length);
		pwlan->fixed = true;
		FUNC4(&tgt_network->network, pnetwork,
			(FUNC11(pnetwork)));
		if (pmlmepriv->fw_state & _FW_UNDER_LINKING)
			pmlmepriv->fw_state ^= _FW_UNDER_LINKING;
		/*
		 * we will set _FW_LINKED when there is one more sat to
		 * join us (stassoc_event_callback)
		 */
	}
createbss_cmd_fail:
	FUNC14(&pmlmepriv->lock, irqL);
	FUNC8(pcmd);
}