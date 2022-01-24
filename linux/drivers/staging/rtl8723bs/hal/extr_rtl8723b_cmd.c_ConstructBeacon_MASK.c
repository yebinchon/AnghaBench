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
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  DSConfig; } ;
struct TYPE_3__ {int SsidLength; unsigned char* Ssid; } ;
struct wlan_bssid_ex {unsigned char* IEs; int IELength; unsigned char* SupportedRates; TYPE_2__ Configuration; TYPE_1__ Ssid; } ;
struct ndis_802_11_fix_ie {int dummy; } ;
struct mlme_ext_info {int state; struct wlan_bssid_ex network; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct ieee80211_hdr_3addr {int dummy; } ;
struct ieee80211_hdr {int* addr1; int* addr2; int* addr3; scalar_t__ frame_control; } ;
struct adapter {int /*<<< orphan*/  eeprompriv; struct mlme_ext_priv mlmeextpriv; } ;
typedef  scalar_t__ __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hdr*,int /*<<< orphan*/ ) ; 
 int TXDESC_SIZE ; 
 int /*<<< orphan*/  WIFI_BEACON ; 
 int WIFI_FW_ADHOC_STATE ; 
 int WIFI_FW_AP_STATE ; 
 int /*<<< orphan*/  _DSSET_IE_ ; 
 int /*<<< orphan*/  _EXT_SUPPORTEDRATES_IE_ ; 
 int /*<<< orphan*/  _IBSS_PARA_IE_ ; 
 int /*<<< orphan*/  _SSID_IE_ ; 
 int /*<<< orphan*/  _SUPPORTEDRATES_IE_ ; 
 unsigned char* FUNC3 (struct wlan_bssid_ex*) ; 
 int /*<<< orphan*/  FUNC4 (int*,...) ; 
 unsigned char* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (unsigned char*) ; 
 scalar_t__ FUNC7 (unsigned char*) ; 
 int FUNC8 (unsigned char*) ; 
 int* FUNC9 (int*,int /*<<< orphan*/ ,int,unsigned char*,int*) ; 

__attribute__((used)) static void FUNC10(struct adapter *padapter, u8 *pframe, u32 *pLength)
{
	struct ieee80211_hdr *pwlanhdr;
	__le16 *fctrl;
	u32 rate_len, pktlen;
	struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);
	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
	struct wlan_bssid_ex *cur_network = &(pmlmeinfo->network);
	u8 bc_addr[] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};


	/* DBG_871X("%s\n", __func__); */

	pwlanhdr = (struct ieee80211_hdr *)pframe;

	fctrl = &(pwlanhdr->frame_control);
	*(fctrl) = 0;

	FUNC4(pwlanhdr->addr1, bc_addr, ETH_ALEN);
	FUNC4(pwlanhdr->addr2, FUNC5(&(padapter->eeprompriv)), ETH_ALEN);
	FUNC4(pwlanhdr->addr3, FUNC3(cur_network), ETH_ALEN);

	FUNC2(pwlanhdr, 0/*pmlmeext->mgnt_seq*/);
	/* pmlmeext->mgnt_seq++; */
	FUNC1(pframe, WIFI_BEACON);

	pframe += sizeof(struct ieee80211_hdr_3addr);
	pktlen = sizeof (struct ieee80211_hdr_3addr);

	/* timestamp will be inserted by hardware */
	pframe += 8;
	pktlen += 8;

	/*  beacon interval: 2 bytes */
	FUNC4(pframe, (unsigned char *)(FUNC6(cur_network->IEs)), 2);

	pframe += 2;
	pktlen += 2;

	/*  capability info: 2 bytes */
	FUNC4(pframe, (unsigned char *)(FUNC7(cur_network->IEs)), 2);

	pframe += 2;
	pktlen += 2;

	if ((pmlmeinfo->state&0x03) == WIFI_FW_AP_STATE) {
		/* DBG_871X("ie len =%d\n", cur_network->IELength); */
		pktlen += cur_network->IELength - sizeof(struct ndis_802_11_fix_ie);
		FUNC4(pframe, cur_network->IEs+sizeof(struct ndis_802_11_fix_ie), pktlen);

		goto _ConstructBeacon;
	}

	/* below for ad-hoc mode */

	/*  SSID */
	pframe = FUNC9(pframe, _SSID_IE_, cur_network->Ssid.SsidLength, cur_network->Ssid.Ssid, &pktlen);

	/*  supported rates... */
	rate_len = FUNC8(cur_network->SupportedRates);
	pframe = FUNC9(pframe, _SUPPORTEDRATES_IE_, ((rate_len > 8) ? 8 : rate_len), cur_network->SupportedRates, &pktlen);

	/*  DS parameter set */
	pframe = FUNC9(pframe, _DSSET_IE_, 1, (unsigned char *)&(cur_network->Configuration.DSConfig), &pktlen);

	if ((pmlmeinfo->state&0x03) == WIFI_FW_ADHOC_STATE) {
		u32 ATIMWindow;
		/*  IBSS Parameter Set... */
		/* ATIMWindow = cur->Configuration.ATIMWindow; */
		ATIMWindow = 0;
		pframe = FUNC9(pframe, _IBSS_PARA_IE_, 2, (unsigned char *)(&ATIMWindow), &pktlen);
	}


	/* todo: ERP IE */


	/*  EXTERNDED SUPPORTED RATE */
	if (rate_len > 8)
		pframe = FUNC9(pframe, _EXT_SUPPORTEDRATES_IE_, (rate_len - 8), (cur_network->SupportedRates + 8), &pktlen);


	/* todo:HT for adhoc */

_ConstructBeacon:

	if ((pktlen + TXDESC_SIZE) > 512) {
		FUNC0("beacon frame too large\n");
		return;
	}

	*pLength = pktlen;

	/* DBG_871X("%s bcn_sz =%d\n", __func__, pktlen); */

}