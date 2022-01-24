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
typedef  int uint ;
typedef  int /*<<< orphan*/  u8 ;
struct sta_info {int dummy; } ;
struct ndis_80211_var_ie {int ElementID; scalar_t__ Length; int /*<<< orphan*/  data; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,struct ndis_80211_var_ie*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,struct sta_info*) ; 
 int WLAN_HDR_A3_LEN ; 
 scalar_t__ WLAN_WMM_LEN ; 
 int /*<<< orphan*/  WMM_PARA_OUI ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,struct ndis_80211_var_ie*) ; 
 int _BEACON_IE_OFFSET_ ; 
#define  _ERPINFO_IE_ 130 
#define  _HT_EXTRA_INFO_IE_ 129 
#define  _VENDOR_SPECIFIC_IE_ 128 
 int /*<<< orphan*/  FUNC3 (struct adapter*,struct ndis_80211_var_ie*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 

void FUNC6(struct adapter *padapter, u8 *pframe, uint pkt_len, struct sta_info *psta)
{
	unsigned int i;
	unsigned int len;
	struct ndis_80211_var_ie *pIE;

	len = pkt_len - (_BEACON_IE_OFFSET_ + WLAN_HDR_A3_LEN);

	for (i = 0; i < len;) {
		pIE = (struct ndis_80211_var_ie *)(pframe + (_BEACON_IE_OFFSET_ + WLAN_HDR_A3_LEN) + i);

		switch (pIE->ElementID) {
		case _VENDOR_SPECIFIC_IE_:
			/* to update WMM paramter set while receiving beacon */
			if (!FUNC4(pIE->data, WMM_PARA_OUI, 6) && pIE->Length == WLAN_WMM_LEN)	/* WMM */
				if (FUNC2(padapter, pIE))
					FUNC5(padapter);

			break;

		case _HT_EXTRA_INFO_IE_:	/* HT info */
			/* HT_info_handler(padapter, pIE); */
			FUNC3(padapter, pIE);
			break;

		case _ERPINFO_IE_:
			FUNC0(padapter, pIE);
			FUNC1(padapter, psta);
			break;

		default:
			break;
		}

		i += (pIE->Length + 2);
	}
}