#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ssid; } ;
struct TYPE_4__ {int /*<<< orphan*/  MacAddress; TYPE_1__ ssid; } ;
struct wlan_network {int fixed; TYPE_2__ network; } ;
struct sta_priv {int asoc_sta_count; int /*<<< orphan*/  sta_hash_lock; } ;
struct sta_info {int dummy; } ;
struct mlme_priv {scalar_t__ key_mask; int /*<<< orphan*/  scanned_queue; struct wlan_network cur_network; } ;
struct adapter {struct sta_priv stapriv; struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int WIFI_ADHOC_MASTER_STATE ; 
 int WIFI_ADHOC_STATE ; 
 int WIFI_AP_STATE ; 
 int WIFI_STATION_STATE ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _drv_notice_ ; 
 int /*<<< orphan*/  _module_rtl871x_mlme_c_ ; 
 scalar_t__ FUNC1 (struct mlme_priv*,int) ; 
 struct wlan_network* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlme_priv*,struct wlan_network*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,struct sta_info*) ; 
 struct sta_info* FUNC6 (struct adapter*) ; 
 struct sta_info* FUNC7 (struct sta_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct adapter *adapter)
{
	struct wlan_network *pwlan = NULL;
	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
	struct sta_priv *pstapriv = &adapter->stapriv;
	struct wlan_network *tgt_network = &pmlmepriv->cur_network;

	FUNC0(_module_rtl871x_mlme_c_, _drv_notice_, ("+rtw_free_assoc_resources\n"));
	FUNC0(_module_rtl871x_mlme_c_, _drv_info_,
		 ("tgt_network->network.MacAddress=%pM ssid=%s\n",
		 tgt_network->network.MacAddress, tgt_network->network.ssid.ssid));

	if (FUNC1(pmlmepriv, WIFI_STATION_STATE | WIFI_AP_STATE)) {
		struct sta_info *psta;

		psta = FUNC7(&adapter->stapriv, tgt_network->network.MacAddress);

		FUNC9(&pstapriv->sta_hash_lock);
		FUNC5(adapter,  psta);
		FUNC10(&pstapriv->sta_hash_lock);
	}

	if (FUNC1(pmlmepriv, WIFI_ADHOC_STATE | WIFI_ADHOC_MASTER_STATE | WIFI_AP_STATE)) {
		struct sta_info *psta;

		FUNC3(adapter);

		psta = FUNC6(adapter);
		FUNC9(&pstapriv->sta_hash_lock);
		FUNC5(adapter, psta);
		FUNC10(&pstapriv->sta_hash_lock);

		FUNC8(adapter);
	}

	pwlan = FUNC2(&pmlmepriv->scanned_queue, tgt_network->network.MacAddress);
	if (pwlan)
		pwlan->fixed = false;
	else
		FUNC0(_module_rtl871x_mlme_c_, _drv_err_, ("rtw_free_assoc_resources:pwlan==NULL\n\n"));

	if ((FUNC1(pmlmepriv, WIFI_ADHOC_MASTER_STATE) && (adapter->stapriv.asoc_sta_count == 1)))
		FUNC4(pmlmepriv, pwlan);

	pmlmepriv->key_mask = 0;
}