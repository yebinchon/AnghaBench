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
struct TYPE_2__ {int /*<<< orphan*/  MacAddress; } ;
struct wlan_network {int fixed; TYPE_1__ network; } ;
struct sta_priv {int asoc_sta_count; int /*<<< orphan*/  sta_hash_lock; } ;
struct sta_info {int dummy; } ;
struct mlme_priv {int /*<<< orphan*/  scanned_queue; struct wlan_network cur_network; } ;
struct _adapter {struct sta_priv stapriv; struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int WIFI_ADHOC_MASTER_STATE ; 
 int WIFI_ADHOC_STATE ; 
 int WIFI_AP_STATE ; 
 int WIFI_STATION_STATE ; 
 scalar_t__ FUNC0 (struct mlme_priv*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlme_priv*,struct wlan_network*) ; 
 struct wlan_network* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct _adapter*,struct sta_info*) ; 
 struct sta_info* FUNC5 (struct sta_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC8(struct _adapter *adapter)
{
	unsigned long irqL;
	struct wlan_network *pwlan = NULL;
	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
	struct sta_priv *pstapriv = &adapter->stapriv;
	struct wlan_network *tgt_network = &pmlmepriv->cur_network;

	pwlan = FUNC2(&pmlmepriv->scanned_queue,
				   tgt_network->network.MacAddress);

	if (FUNC0(pmlmepriv, WIFI_STATION_STATE | WIFI_AP_STATE)) {
		struct sta_info *psta;

		psta = FUNC5(&adapter->stapriv,
					 tgt_network->network.MacAddress);

		FUNC6(&pstapriv->sta_hash_lock, irqL);
		FUNC4(adapter,  psta);
		FUNC7(&pstapriv->sta_hash_lock, irqL);
	}

	if (FUNC0(pmlmepriv,
	    WIFI_ADHOC_STATE | WIFI_ADHOC_MASTER_STATE | WIFI_AP_STATE))
		FUNC3(adapter);
	if (pwlan)
		pwlan->fixed = false;

	if (((FUNC0(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) &&
	     (adapter->stapriv.asoc_sta_count == 1)))
		FUNC1(pmlmepriv, pwlan);
}