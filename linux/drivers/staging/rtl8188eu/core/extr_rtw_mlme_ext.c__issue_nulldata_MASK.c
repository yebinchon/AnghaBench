#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  unsigned char u8 ;
struct xmit_priv {int dummy; } ;
struct pkt_attrib {int retry_ctrl; int pktlen; int last_txcmdsz; } ;
struct xmit_frame {scalar_t__ buf_addr; struct pkt_attrib attrib; } ;
struct wlan_bssid_ex {unsigned char* MacAddress; } ;
struct mlme_ext_info {int state; struct wlan_bssid_ex network; } ;
struct mlme_ext_priv {int /*<<< orphan*/  mgnt_seq; struct mlme_ext_info mlmext_info; } ;
struct ieee80211_hdr_3addr {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr3; int /*<<< orphan*/  addr2; int /*<<< orphan*/  addr1; scalar_t__ frame_control; } ;
struct adapter {int /*<<< orphan*/  eeprompriv; struct mlme_ext_priv mlmeextpriv; struct xmit_priv xmitpriv; } ;
typedef  scalar_t__ __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int TXDESC_OFFSET ; 
 int /*<<< orphan*/  WIFI_DATA_NULL ; 
 int WIFI_FW_AP_STATE ; 
 int WIFI_FW_STATION_STATE ; 
 int WLANHDR_OFFSET ; 
 int _FAIL ; 
 int _SUCCESS ; 
 struct xmit_frame* FUNC5 (struct xmit_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,struct xmit_frame*) ; 
 int FUNC7 (struct adapter*,struct xmit_frame*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 unsigned char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*,struct pkt_attrib*) ; 

__attribute__((used)) static int FUNC12(struct adapter *padapter, unsigned char *da,
			   unsigned int power_mode, bool wait_ack)
{
	int ret = _FAIL;
	struct xmit_frame *pmgntframe;
	struct pkt_attrib *pattrib;
	unsigned char *pframe;
	struct ieee80211_hdr *pwlanhdr;
	__le16 *fctrl;
	struct xmit_priv *pxmitpriv;
	struct mlme_ext_priv *pmlmeext;
	struct mlme_ext_info *pmlmeinfo;
	struct wlan_bssid_ex *pnetwork;

	if (!padapter)
		goto exit;

	pxmitpriv = &padapter->xmitpriv;
	pmlmeext = &padapter->mlmeextpriv;
	pmlmeinfo = &pmlmeext->mlmext_info;
	pnetwork = &pmlmeinfo->network;

	pmgntframe = FUNC5(pxmitpriv);
	if (!pmgntframe)
		goto exit;

	/* update attribute */
	pattrib = &pmgntframe->attrib;
	FUNC11(padapter, pattrib);
	pattrib->retry_ctrl = false;

	FUNC9(pmgntframe->buf_addr, 0, WLANHDR_OFFSET + TXDESC_OFFSET);

	pframe = (u8 *)(pmgntframe->buf_addr) + TXDESC_OFFSET;
	pwlanhdr = (struct ieee80211_hdr *)pframe;

	fctrl = &pwlanhdr->frame_control;
	*(fctrl) = 0;

	if ((pmlmeinfo->state & 0x03) == WIFI_FW_AP_STATE)
		FUNC0(fctrl);
	else if ((pmlmeinfo->state & 0x03) == WIFI_FW_STATION_STATE)
		FUNC4(fctrl);

	if (power_mode)
		FUNC2(fctrl);

	FUNC8(pwlanhdr->addr1, da);
	FUNC8(pwlanhdr->addr2, FUNC10(&padapter->eeprompriv));
	FUNC8(pwlanhdr->addr3, pnetwork->MacAddress);

	FUNC3(pwlanhdr, pmlmeext->mgnt_seq);
	pmlmeext->mgnt_seq++;
	FUNC1(pframe, WIFI_DATA_NULL);

	pframe += sizeof(struct ieee80211_hdr_3addr);
	pattrib->pktlen = sizeof(struct ieee80211_hdr_3addr);

	pattrib->last_txcmdsz = pattrib->pktlen;

	if (wait_ack) {
		ret = FUNC7(padapter, pmgntframe);
	} else {
		FUNC6(padapter, pmgntframe);
		ret = _SUCCESS;
	}

exit:
	return ret;
}