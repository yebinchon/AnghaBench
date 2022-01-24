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
struct rx_pkt_attrib {char* dst; char* src; char* bssid; char* ra; char* ta; } ;
struct TYPE_3__ {char* rx_data; struct rx_pkt_attrib attrib; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
typedef  char u8 ;
struct sta_priv {int dummy; } ;
struct sta_info {int dummy; } ;
struct mlme_priv {int dummy; } ;
struct adapter {int /*<<< orphan*/  eeprompriv; struct mlme_priv mlmepriv; struct sta_priv stapriv; } ;
typedef  scalar_t__ sint ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 char* FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  WIFI_ADHOC_MASTER_STATE ; 
 int /*<<< orphan*/  WIFI_ADHOC_STATE ; 
 int /*<<< orphan*/  WIFI_AP_STATE ; 
 int /*<<< orphan*/  WIFI_MP_STATE ; 
 int /*<<< orphan*/  WIFI_STATION_STATE ; 
 scalar_t__ _FAIL ; 
 scalar_t__ _SUCCESS ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _module_rtl871x_recv_c_ ; 
 int FUNC5 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (struct mlme_priv*) ; 
 scalar_t__ FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 struct sta_info* FUNC10 (struct adapter*) ; 
 struct sta_info* FUNC11 (struct sta_priv*,char*) ; 

sint FUNC12(
	struct adapter *adapter,
	union recv_frame *precv_frame,
	struct sta_info **psta
)
{
	u8 *ptr = precv_frame->u.hdr.rx_data;
	sint ret = _SUCCESS;
	struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
	struct	sta_priv 	*pstapriv = &adapter->stapriv;
	struct	mlme_priv *pmlmepriv = &adapter->mlmepriv;
	u8 *mybssid  = FUNC6(pmlmepriv);
	u8 *myhwaddr = FUNC9(&adapter->eeprompriv);
	u8 *sta_addr = NULL;
	sint bmcast = FUNC3(pattrib->dst);

	/* DBG_871X("[%s] %d, seqnum:%d\n", __func__, __LINE__, pattrib->seq_num); */

	if ((FUNC5(pmlmepriv, WIFI_ADHOC_STATE) == true) ||
		(FUNC5(pmlmepriv, WIFI_ADHOC_MASTER_STATE) == true)) {

		/*  filter packets that SA is myself or multicast or broadcast */
		if (!FUNC7(myhwaddr, pattrib->src, ETH_ALEN)) {
			FUNC4(_module_rtl871x_recv_c_, _drv_err_, (" SA ==myself\n"));
			ret = _FAIL;
			goto exit;
		}

		if ((FUNC7(myhwaddr, pattrib->dst, ETH_ALEN))	&& (!bmcast)) {
			ret = _FAIL;
			goto exit;
		}

		if (!FUNC7(pattrib->bssid, "\x0\x0\x0\x0\x0\x0", ETH_ALEN) ||
		   !FUNC7(mybssid, "\x0\x0\x0\x0\x0\x0", ETH_ALEN) ||
		   (FUNC7(pattrib->bssid, mybssid, ETH_ALEN))) {
			ret = _FAIL;
			goto exit;
		}

		sta_addr = pattrib->src;

	} else if (FUNC5(pmlmepriv, WIFI_STATION_STATE) == true) {
		/*  For Station mode, sa and bssid should always be BSSID, and DA is my mac-address */
		if (FUNC7(pattrib->bssid, pattrib->src, ETH_ALEN)) {
			FUNC4(_module_rtl871x_recv_c_, _drv_err_, ("bssid != TA under STATION_MODE; drop pkt\n"));
			ret = _FAIL;
			goto exit;
		}

		sta_addr = pattrib->bssid;
	} else if (FUNC5(pmlmepriv, WIFI_AP_STATE) == true) {
		if (bmcast) {
			/*  For AP mode, if DA == MCAST, then BSSID should be also MCAST */
			if (!FUNC3(pattrib->bssid)) {
					ret = _FAIL;
					goto exit;
			}
		} else { /*  not mc-frame */
			/*  For AP mode, if DA is non-MCAST, then it must be BSSID, and bssid == BSSID */
			if (FUNC7(pattrib->bssid, pattrib->dst, ETH_ALEN)) {
				ret = _FAIL;
				goto exit;
			}

			sta_addr = pattrib->src;
		}

	} else if (FUNC5(pmlmepriv, WIFI_MP_STATE) == true) {
		FUNC8(pattrib->dst, FUNC0(ptr), ETH_ALEN);
		FUNC8(pattrib->src, FUNC1(ptr), ETH_ALEN);
		FUNC8(pattrib->bssid, FUNC2(ptr), ETH_ALEN);
		FUNC8(pattrib->ra, pattrib->dst, ETH_ALEN);
		FUNC8(pattrib->ta, pattrib->src, ETH_ALEN);

		sta_addr = mybssid;
	} else
		ret  = _FAIL;



	if (bmcast)
		*psta = FUNC10(adapter);
	else
		*psta = FUNC11(pstapriv, sta_addr); /*  get ap_info */

	if (!*psta) {
		FUNC4(_module_rtl871x_recv_c_, _drv_err_, ("can't get psta under sta2sta_data_frame ; drop pkt\n"));
		ret = _FAIL;
		goto exit;
	}

exit:
	return ret;
}