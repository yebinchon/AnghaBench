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
struct rx_pkt_attrib {int /*<<< orphan*/ * src; int /*<<< orphan*/ * ta; int /*<<< orphan*/ * dst; int /*<<< orphan*/ * ra; int /*<<< orphan*/ * bssid; } ;
struct TYPE_4__ {struct rx_pkt_attrib attrib; int /*<<< orphan*/ * rx_data; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  u8 ;
struct sta_priv {int dummy; } ;
struct sta_info {int dummy; } ;
struct mlme_priv {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  rx_pktloss; } ;
struct _adapter {TYPE_3__ mppriv; int /*<<< orphan*/  eeprompriv; struct mlme_priv mlmepriv; struct sta_priv stapriv; } ;
typedef  int /*<<< orphan*/  sint ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WIFI_ADHOC_MASTER_STATE ; 
 int /*<<< orphan*/  WIFI_ADHOC_STATE ; 
 int /*<<< orphan*/  WIFI_AP_STATE ; 
 int /*<<< orphan*/  WIFI_MP_STATE ; 
 int /*<<< orphan*/  WIFI_STATION_STATE ; 
 int /*<<< orphan*/  _FAIL ; 
 int /*<<< orphan*/  _SUCCESS ; 
 scalar_t__ FUNC3 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct mlme_priv*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 struct sta_info* FUNC10 (struct _adapter*) ; 
 struct sta_info* FUNC11 (struct sta_priv*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static sint FUNC12(struct _adapter *adapter,
			       union recv_frame *precv_frame,
			       struct sta_info **psta)
{
	u8 *ptr = precv_frame->u.hdr.rx_data;
	sint ret = _SUCCESS;
	struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
	struct	sta_priv *pstapriv = &adapter->stapriv;
	struct	mlme_priv *pmlmepriv = &adapter->mlmepriv;
	u8 *mybssid  = FUNC4(pmlmepriv);
	u8 *myhwaddr = FUNC9(&adapter->eeprompriv);
	u8 *sta_addr = NULL;
	bool bmcast = FUNC5(pattrib->dst);

	if (FUNC3(pmlmepriv, WIFI_ADHOC_STATE) ||
	    FUNC3(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) {
		/* filter packets that SA is myself or multicast or broadcast */
		if (!FUNC7(myhwaddr, pattrib->src, ETH_ALEN))
			return _FAIL;
		if ((FUNC7(myhwaddr, pattrib->dst, ETH_ALEN)) && (!bmcast))
			return _FAIL;
		if (FUNC6(pattrib->bssid) ||
		    FUNC6(mybssid) ||
		    (FUNC7(pattrib->bssid, mybssid, ETH_ALEN)))
			return _FAIL;
		sta_addr = pattrib->src;
	} else if (FUNC3(pmlmepriv, WIFI_STATION_STATE)) {
		/* For Station mode, sa and bssid should always be BSSID,
		 * and DA is my mac-address
		 */
		if (FUNC7(pattrib->bssid, pattrib->src, ETH_ALEN))
			return _FAIL;
		sta_addr = pattrib->bssid;
	} else if (FUNC3(pmlmepriv, WIFI_AP_STATE)) {
		if (bmcast) {
			/* For AP mode, if DA == MCAST, then BSSID should
			 * be also MCAST
			 */
			if (!FUNC5(pattrib->bssid))
				return _FAIL;
		} else { /* not mc-frame */
			/* For AP mode, if DA is non-MCAST, then it must be
			 * BSSID, and bssid == BSSID
			 */
			if (FUNC7(pattrib->bssid, pattrib->dst, ETH_ALEN))
				return _FAIL;
			sta_addr = pattrib->src;
		}
	} else if (FUNC3(pmlmepriv, WIFI_MP_STATE)) {
		FUNC8(pattrib->dst, FUNC0(ptr), ETH_ALEN);
		FUNC8(pattrib->src, FUNC1(ptr), ETH_ALEN);
		FUNC8(pattrib->bssid, FUNC2(ptr), ETH_ALEN);
		FUNC8(pattrib->ra, pattrib->dst, ETH_ALEN);
		FUNC8(pattrib->ta, pattrib->src, ETH_ALEN);
		sta_addr = mybssid;
	} else {
		ret  = _FAIL;
	}
	if (bmcast)
		*psta = FUNC10(adapter);
	else
		*psta = FUNC11(pstapriv, sta_addr); /* get ap_info */
	if (*psta == NULL) {
		if (FUNC3(pmlmepriv, WIFI_MP_STATE))
			adapter->mppriv.rx_pktloss++;
		return _FAIL;
	}
	return ret;
}