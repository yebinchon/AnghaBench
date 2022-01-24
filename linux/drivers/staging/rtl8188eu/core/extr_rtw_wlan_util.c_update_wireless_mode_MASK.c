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
typedef  int u32 ;
struct wlan_bssid_ex {unsigned char* SupportedRates; } ;
struct mlme_ext_info {int HT_enable; scalar_t__ HT_caps_enable; scalar_t__ HT_info_enable; struct wlan_bssid_ex network; } ;
struct mlme_ext_priv {int cur_wireless_mode; struct mlme_ext_info mlmext_info; } ;
struct TYPE_2__ {int wireless_mode; } ;
struct adapter {TYPE_1__ registrypriv; struct mlme_ext_priv mlmeextpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_VAR_RESP_SIFS ; 
 int /*<<< orphan*/  IEEE80211_CCK_RATE_1MB ; 
 int /*<<< orphan*/  IEEE80211_OFDM_RATE_6MB ; 
 int WIRELESS_11B ; 
 int WIRELESS_11BG ; 
 int WIRELESS_11G ; 
 int WIRELESS_11_24N ; 
 scalar_t__ FUNC0 (unsigned char*,int) ; 
 scalar_t__ FUNC1 (unsigned char*,int) ; 
 int FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 

void FUNC5(struct adapter *padapter)
{
	int ratelen, network_type = 0;
	u32 SIFS_Timer;
	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
	struct wlan_bssid_ex *cur_network = &pmlmeinfo->network;
	unsigned char *rate = cur_network->SupportedRates;

	ratelen = FUNC2(cur_network->SupportedRates);

	if (pmlmeinfo->HT_info_enable && pmlmeinfo->HT_caps_enable)
		pmlmeinfo->HT_enable = 1;

	if (pmlmeinfo->HT_enable)
		network_type = WIRELESS_11_24N;

	if (FUNC1(rate, ratelen))
		network_type |= WIRELESS_11B;
	else if (FUNC0(rate, ratelen))
		network_type |= WIRELESS_11BG;
	else
		network_type |= WIRELESS_11G;

	pmlmeext->cur_wireless_mode = network_type & padapter->registrypriv.wireless_mode;

	SIFS_Timer = 0x0a0a0808;/* 0x0808 -> for CCK, 0x0a0a -> for OFDM */
				/* change this value if having IOT issues. */

	FUNC3(padapter, HW_VAR_RESP_SIFS,  (u8 *)&SIFS_Timer);

	FUNC4(padapter,
			    pmlmeext->cur_wireless_mode & WIRELESS_11B ?
			    IEEE80211_CCK_RATE_1MB : IEEE80211_OFDM_RATE_6MB);
}