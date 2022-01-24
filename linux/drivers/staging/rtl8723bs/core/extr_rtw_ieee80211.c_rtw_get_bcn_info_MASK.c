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
typedef  scalar_t__ u16 ;
struct TYPE_6__ {scalar_t__ ht_info_infos_0; void* ht_cap_info; int /*<<< orphan*/  encryp_protocol; } ;
struct TYPE_4__ {int /*<<< orphan*/  Ssid; } ;
struct TYPE_5__ {int Privacy; scalar_t__ IELength; scalar_t__ IEs; TYPE_1__ Ssid; } ;
struct wlan_network {TYPE_3__ BcnInfo; TYPE_2__ network; } ;
struct ieee80211_ht_cap {int /*<<< orphan*/  cap_info; } ;
struct HT_info_element {scalar_t__* infos; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  ENCRYP_PROTOCOL_OPENSYS ; 
 int /*<<< orphan*/  ENCRYP_PROTOCOL_WEP ; 
 int /*<<< orphan*/  ENCRYP_PROTOCOL_WPA ; 
 int /*<<< orphan*/  ENCRYP_PROTOCOL_WPA2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 unsigned short WLAN_CAPABILITY_PRIVACY ; 
 scalar_t__ _FIXED_IE_LENGTH_ ; 
 int /*<<< orphan*/  _HT_ADD_INFO_IE_ ; 
 int /*<<< orphan*/  _HT_CAPABILITY_IE_ ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _module_rtl871x_mlme_c_ ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct wlan_network*) ; 
 unsigned char* FUNC5 (scalar_t__,int /*<<< orphan*/ ,unsigned int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*) ; 

void FUNC7(struct wlan_network *pnetwork)
{
	unsigned short cap = 0;
	u8 bencrypt = 0;
	/* u8 wpa_ie[255], rsn_ie[255]; */
	u16 wpa_len = 0, rsn_len = 0;
	struct HT_info_element *pht_info = NULL;
	struct ieee80211_ht_cap *pht_cap = NULL;
	unsigned int		len;
	unsigned char 	*p;
	__le16 le_cap;

	FUNC2((u8 *)&le_cap, FUNC3(pnetwork->network.IEs), 2);
	cap = FUNC1(le_cap);
	if (cap & WLAN_CAPABILITY_PRIVACY) {
		bencrypt = 1;
		pnetwork->network.Privacy = 1;
	} else {
		pnetwork->BcnInfo.encryp_protocol = ENCRYP_PROTOCOL_OPENSYS;
	}
	FUNC6(pnetwork->network.IEs, pnetwork->network.IELength, NULL, &rsn_len, NULL, &wpa_len);
	FUNC0(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_bcn_info: ssid =%s\n", pnetwork->network.Ssid.Ssid));
	FUNC0(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_bcn_info: wpa_len =%d rsn_len =%d\n", wpa_len, rsn_len));
	FUNC0(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_bcn_info: ssid =%s\n", pnetwork->network.Ssid.Ssid));
	FUNC0(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_bcn_info: wpa_len =%d rsn_len =%d\n", wpa_len, rsn_len));

	if (rsn_len > 0) {
		pnetwork->BcnInfo.encryp_protocol = ENCRYP_PROTOCOL_WPA2;
	} else if (wpa_len > 0) {
		pnetwork->BcnInfo.encryp_protocol = ENCRYP_PROTOCOL_WPA;
	} else {
		if (bencrypt)
			pnetwork->BcnInfo.encryp_protocol = ENCRYP_PROTOCOL_WEP;
	}
	FUNC0(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_bcn_info: pnetwork->encryp_protocol is %x\n",
				pnetwork->BcnInfo.encryp_protocol));
	FUNC0(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_bcn_info: pnetwork->encryp_protocol is %x\n",
				pnetwork->BcnInfo.encryp_protocol));
	FUNC4(pnetwork);

	/* get bwmode and ch_offset */
	/* parsing HT_CAP_IE */
	p = FUNC5(pnetwork->network.IEs + _FIXED_IE_LENGTH_, _HT_CAPABILITY_IE_, &len, pnetwork->network.IELength - _FIXED_IE_LENGTH_);
	if (p && len > 0) {
			pht_cap = (struct ieee80211_ht_cap *)(p + 2);
			pnetwork->BcnInfo.ht_cap_info = FUNC1(pht_cap->cap_info);
	} else {
			pnetwork->BcnInfo.ht_cap_info = 0;
	}
	/* parsing HT_INFO_IE */
	p = FUNC5(pnetwork->network.IEs + _FIXED_IE_LENGTH_, _HT_ADD_INFO_IE_, &len, pnetwork->network.IELength - _FIXED_IE_LENGTH_);
	if (p && len > 0) {
			pht_info = (struct HT_info_element *)(p + 2);
			pnetwork->BcnInfo.ht_info_infos_0 = pht_info->infos[0];
	} else {
			pnetwork->BcnInfo.ht_info_infos_0 = 0;
	}
}