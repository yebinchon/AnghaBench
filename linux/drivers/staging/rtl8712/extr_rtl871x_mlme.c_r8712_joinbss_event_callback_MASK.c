#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  union pn48 {int dummy; } pn48 ;
typedef  union Keytype {int dummy; } Keytype ;
struct TYPE_11__ {scalar_t__ DwellTime; scalar_t__ HopPattern; scalar_t__ HopSet; scalar_t__ Length; } ;
struct TYPE_12__ {scalar_t__ ATIMWindow; scalar_t__ BeaconPeriod; scalar_t__ DSConfig; scalar_t__ Length; TYPE_1__ FHConfig; } ;
struct TYPE_14__ {scalar_t__ SsidLength; } ;
struct TYPE_15__ {int Length; scalar_t__ Privacy; scalar_t__ Rssi; scalar_t__ NetworkTypeInUse; scalar_t__ InfrastructureMode; scalar_t__ IELength; scalar_t__ IEs; int /*<<< orphan*/  MacAddress; TYPE_2__ Configuration; TYPE_4__ Ssid; } ;
typedef  TYPE_5__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct wlan_network {scalar_t__ join_res; scalar_t__ network_type; int fixed; scalar_t__ aid; TYPE_5__ network; } ;
struct wlan_bssid_ex {int dummy; } ;
struct sta_priv {int /*<<< orphan*/  sta_hash_lock; } ;
struct sta_info {scalar_t__ aid; int qos_option; int mac_id; int ieee8021x_blocked; int /*<<< orphan*/  rxpn; int /*<<< orphan*/  txpn; int /*<<< orphan*/  tkiptxmickey; int /*<<< orphan*/  tkiprxmickey; int /*<<< orphan*/  x_UncstKey; int /*<<< orphan*/  XPrivacy; } ;
struct mlme_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  assoc_timer; int /*<<< orphan*/  fw_state; int /*<<< orphan*/  scanned_queue; struct wlan_network cur_network; } ;
struct list_head {int dummy; } ;
struct TYPE_13__ {int AuthAlgrthm; int binstallGrpkey; int busetkipkey; int bgrpkey_handshake; int /*<<< orphan*/  PrivacyAlgrthm; } ;
struct _adapter {TYPE_3__ securitypriv; struct mlme_priv mlmepriv; struct sta_priv stapriv; } ;
struct NDIS_802_11_FIXED_IEs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  Ndis802_11IBSS 129 
#define  Ndis802_11Infrastructure 128 
 int /*<<< orphan*/  WIFI_ADHOC_STATE ; 
 int /*<<< orphan*/  WIFI_NULL_STATE ; 
 int /*<<< orphan*/  WIFI_STATION_STATE ; 
 int /*<<< orphan*/  _FW_LINKED ; 
 int /*<<< orphan*/  _FW_UNDER_LINKING ; 
 int /*<<< orphan*/  FUNC0 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct wlan_network*) ; 
 struct wlan_network* FUNC4 (int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC10 (int) ; 
 struct sta_info* FUNC11 (struct sta_priv*,int /*<<< orphan*/ ) ; 
 struct wlan_network* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct _adapter*,struct sta_info*) ; 
 struct sta_info* FUNC14 (struct sta_priv*,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC16 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC17 (struct _adapter*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (struct _adapter*,scalar_t__,scalar_t__) ; 

void FUNC21(struct _adapter *adapter, u8 *pbuf)
{
	unsigned long irqL = 0, irqL2;
	struct sta_info	*ptarget_sta = NULL, *pcur_sta = NULL;
	struct sta_priv	*pstapriv = &adapter->stapriv;
	struct mlme_priv	*pmlmepriv = &adapter->mlmepriv;
	struct wlan_network	*cur_network = &pmlmepriv->cur_network;
	struct wlan_network	*pcur_wlan = NULL, *ptarget_wlan = NULL;
	unsigned int		the_same_macaddr = false;
	struct wlan_network *pnetwork;

	if (sizeof(struct list_head) == 4 * sizeof(u32)) {
		pnetwork = FUNC4(sizeof(struct wlan_network), GFP_ATOMIC);
		if (!pnetwork)
			return;
		FUNC7((u8 *)pnetwork + 16, (u8 *)pbuf + 8,
		       sizeof(struct wlan_network) - 16);
	} else {
		pnetwork = (struct wlan_network *)pbuf;
	}

#ifdef __BIG_ENDIAN
	/* endian_convert */
	pnetwork->join_res = le32_to_cpu(pnetwork->join_res);
	pnetwork->network_type = le32_to_cpu(pnetwork->network_type);
	pnetwork->network.Length = le32_to_cpu(pnetwork->network.Length);
	pnetwork->network.Ssid.SsidLength =
		 le32_to_cpu(pnetwork->network.Ssid.SsidLength);
	pnetwork->network.Privacy = le32_to_cpu(pnetwork->network.Privacy);
	pnetwork->network.Rssi = le32_to_cpu(pnetwork->network.Rssi);
	pnetwork->network.NetworkTypeInUse =
		 le32_to_cpu(pnetwork->network.NetworkTypeInUse);
	pnetwork->network.Configuration.ATIMWindow =
		 le32_to_cpu(pnetwork->network.Configuration.ATIMWindow);
	pnetwork->network.Configuration.BeaconPeriod =
		 le32_to_cpu(pnetwork->network.Configuration.BeaconPeriod);
	pnetwork->network.Configuration.DSConfig =
		 le32_to_cpu(pnetwork->network.Configuration.DSConfig);
	pnetwork->network.Configuration.FHConfig.DwellTime =
		 le32_to_cpu(pnetwork->network.Configuration.FHConfig.
			     DwellTime);
	pnetwork->network.Configuration.FHConfig.HopPattern =
		 le32_to_cpu(pnetwork->network.Configuration.
			     FHConfig.HopPattern);
	pnetwork->network.Configuration.FHConfig.HopSet =
		 le32_to_cpu(pnetwork->network.Configuration.FHConfig.HopSet);
	pnetwork->network.Configuration.FHConfig.Length =
		 le32_to_cpu(pnetwork->network.Configuration.FHConfig.Length);
	pnetwork->network.Configuration.Length =
		 le32_to_cpu(pnetwork->network.Configuration.Length);
	pnetwork->network.InfrastructureMode =
		 le32_to_cpu(pnetwork->network.InfrastructureMode);
	pnetwork->network.IELength = le32_to_cpu(pnetwork->network.IELength);
#endif

	the_same_macaddr = !FUNC6(pnetwork->network.MacAddress,
				   cur_network->network.MacAddress, ETH_ALEN);
	pnetwork->network.Length =
		 FUNC15(&pnetwork->network);
	FUNC18(&pmlmepriv->lock, irqL);
	if (pnetwork->network.Length > sizeof(struct wlan_bssid_ex))
		goto ignore_joinbss_callback;
	if (pnetwork->join_res > 0) {
		if (FUNC1(pmlmepriv, _FW_UNDER_LINKING)) {
			/*s1. find ptarget_wlan*/
			if (FUNC1(pmlmepriv, _FW_LINKED)) {
				if (the_same_macaddr) {
					ptarget_wlan =
					    FUNC12(&pmlmepriv->
					    scanned_queue,
					    cur_network->network.MacAddress);
				} else {
					pcur_wlan =
					     FUNC12(&pmlmepriv->
					     scanned_queue,
					     cur_network->network.MacAddress);
					pcur_wlan->fixed = false;

					pcur_sta = FUNC14(pstapriv,
					     cur_network->network.MacAddress);
					FUNC18(&pstapriv->
						sta_hash_lock, irqL2);
					FUNC13(adapter, pcur_sta);
					FUNC19(&(pstapriv->
						sta_hash_lock), irqL2);

					ptarget_wlan =
						 FUNC12(&pmlmepriv->
						 scanned_queue,
						 pnetwork->network.
						 MacAddress);
					if (ptarget_wlan)
						ptarget_wlan->fixed = true;
				}
			} else {
				ptarget_wlan = FUNC12(&pmlmepriv->
						scanned_queue,
						pnetwork->network.MacAddress);
				if (ptarget_wlan)
					ptarget_wlan->fixed = true;
			}

			if (ptarget_wlan == NULL) {
				if (FUNC1(pmlmepriv,
					_FW_UNDER_LINKING))
					pmlmepriv->fw_state ^=
						 _FW_UNDER_LINKING;
				goto ignore_joinbss_callback;
			}

			/*s2. find ptarget_sta & update ptarget_sta*/
			if (FUNC1(pmlmepriv, WIFI_STATION_STATE)) {
				if (the_same_macaddr) {
					ptarget_sta =
						 FUNC14(pstapriv,
						 pnetwork->network.MacAddress);
					if (ptarget_sta == NULL)
						ptarget_sta =
						 FUNC11(pstapriv,
						 pnetwork->network.MacAddress);
				} else {
					ptarget_sta =
						 FUNC11(pstapriv,
						 pnetwork->network.MacAddress);
				}
				if (ptarget_sta) /*update ptarget_sta*/ {
					ptarget_sta->aid = pnetwork->join_res;
					ptarget_sta->qos_option = 1;
					ptarget_sta->mac_id = 5;
					if (adapter->securitypriv.
					    AuthAlgrthm == 2) {
						adapter->securitypriv.
							binstallGrpkey =
							 false;
						adapter->securitypriv.
							busetkipkey =
							 false;
						adapter->securitypriv.
							bgrpkey_handshake =
							 false;
						ptarget_sta->ieee8021x_blocked
							 = true;
						ptarget_sta->XPrivacy =
							 adapter->securitypriv.
							 PrivacyAlgrthm;
						FUNC8((u8 *)&ptarget_sta->
							 x_UncstKey,
							 0,
							 sizeof(union Keytype));
						FUNC8((u8 *)&ptarget_sta->
							 tkiprxmickey,
							 0,
							 sizeof(union Keytype));
						FUNC8((u8 *)&ptarget_sta->
							 tkiptxmickey,
							 0,
							 sizeof(union Keytype));
						FUNC8((u8 *)&ptarget_sta->
							 txpn, 0,
							 sizeof(union pn48));
						FUNC8((u8 *)&ptarget_sta->
							 rxpn, 0,
							 sizeof(union pn48));
					}
				} else {
					if (FUNC1(pmlmepriv,
					    _FW_UNDER_LINKING))
						pmlmepriv->fw_state ^=
							 _FW_UNDER_LINKING;
					goto ignore_joinbss_callback;
				}
			}

			/*s3. update cur_network & indicate connect*/
			FUNC7(&cur_network->network, &pnetwork->network,
				pnetwork->network.Length);
			cur_network->aid = pnetwork->join_res;
			/*update fw_state will clr _FW_UNDER_LINKING*/
			switch (pnetwork->network.InfrastructureMode) {
			case Ndis802_11Infrastructure:
				pmlmepriv->fw_state = WIFI_STATION_STATE;
				break;
			case Ndis802_11IBSS:
				pmlmepriv->fw_state = WIFI_ADHOC_STATE;
				break;
			default:
				pmlmepriv->fw_state = WIFI_NULL_STATE;
				break;
			}
			FUNC17(adapter,
					  (cur_network->network.IEs) +
					  sizeof(struct NDIS_802_11_FIXED_IEs),
					  (cur_network->network.IELength));
			/*TODO: update HT_Capability*/
			FUNC20(adapter, cur_network->network.IEs,
				      cur_network->network.IELength);
			/*indicate connect*/
			if (FUNC1(pmlmepriv, WIFI_STATION_STATE))
				FUNC16(adapter);
			FUNC2(&pmlmepriv->assoc_timer);
		} else {
			goto ignore_joinbss_callback;
		}
	} else {
		if (FUNC1(pmlmepriv, _FW_UNDER_LINKING)) {
			FUNC9(&pmlmepriv->assoc_timer,
				  jiffies + FUNC10(1));
			FUNC0(pmlmepriv, _FW_UNDER_LINKING);
		}
	}
ignore_joinbss_callback:
	FUNC19(&pmlmepriv->lock, irqL);
	if (sizeof(struct list_head) == 4 * sizeof(u32))
		FUNC3(pnetwork);
}