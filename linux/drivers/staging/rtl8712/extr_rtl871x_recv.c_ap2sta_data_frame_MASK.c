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
struct rx_pkt_attrib {int /*<<< orphan*/ * bssid; int /*<<< orphan*/ * src; int /*<<< orphan*/ * ta; int /*<<< orphan*/ * dst; int /*<<< orphan*/ * ra; } ;
struct TYPE_3__ {struct rx_pkt_attrib attrib; int /*<<< orphan*/ * rx_data; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  u8 ;
struct sta_priv {int dummy; } ;
struct sta_info {int dummy; } ;
struct mlme_priv {int dummy; } ;
struct _adapter {int /*<<< orphan*/  eeprompriv; struct mlme_priv mlmepriv; struct sta_priv stapriv; } ;
typedef  int /*<<< orphan*/  sint ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ WIFI_DATA_NULL ; 
 int /*<<< orphan*/  WIFI_MP_STATE ; 
 int WIFI_QOS_DATA_TYPE ; 
 int /*<<< orphan*/  WIFI_STATION_STATE ; 
 int /*<<< orphan*/  _FAIL ; 
 int /*<<< orphan*/  _FW_LINKED ; 
 int /*<<< orphan*/  _SUCCESS ; 
 scalar_t__ FUNC5 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct mlme_priv*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 struct sta_info* FUNC12 (struct _adapter*) ; 
 struct sta_info* FUNC13 (struct sta_priv*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static sint FUNC14(struct _adapter *adapter,
			      union recv_frame *precv_frame,
			      struct sta_info **psta)
{
	u8 *ptr = precv_frame->u.hdr.rx_data;
	struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
	struct	sta_priv *pstapriv = &adapter->stapriv;
	struct	mlme_priv *pmlmepriv = &adapter->mlmepriv;
	u8 *mybssid  = FUNC6(pmlmepriv);
	u8 *myhwaddr = FUNC11(&adapter->eeprompriv);
	bool bmcast = FUNC7(pattrib->dst);

	if (FUNC5(pmlmepriv, WIFI_STATION_STATE) &&
	    FUNC5(pmlmepriv, _FW_LINKED)) {
		/* if NULL-frame, drop packet */
		if ((FUNC4(ptr)) == WIFI_DATA_NULL)
			return _FAIL;
		/* drop QoS-SubType Data, including QoS NULL,
		 * excluding QoS-Data
		 */
		if ((FUNC4(ptr) & WIFI_QOS_DATA_TYPE) ==
		     WIFI_QOS_DATA_TYPE) {
			if (FUNC4(ptr) & (FUNC0(4) | FUNC0(5) | FUNC0(6)))
				return _FAIL;
		}

		/* filter packets that SA is myself or multicast or broadcast */
		if (!FUNC9(myhwaddr, pattrib->src, ETH_ALEN))
			return _FAIL;

		/* da should be for me */
		if ((FUNC9(myhwaddr, pattrib->dst, ETH_ALEN)) && (!bmcast))
			return _FAIL;
		/* check BSSID */
		if (FUNC8(pattrib->bssid) ||
		     FUNC8(mybssid) ||
		     (FUNC9(pattrib->bssid, mybssid, ETH_ALEN)))
			return _FAIL;
		if (bmcast)
			*psta = FUNC12(adapter);
		else
			*psta = FUNC13(pstapriv, pattrib->bssid);
		if (*psta == NULL)
			return _FAIL;
	} else if (FUNC5(pmlmepriv, WIFI_MP_STATE) &&
		   FUNC5(pmlmepriv, _FW_LINKED)) {
		FUNC10(pattrib->dst, FUNC1(ptr), ETH_ALEN);
		FUNC10(pattrib->src, FUNC2(ptr), ETH_ALEN);
		FUNC10(pattrib->bssid, FUNC3(ptr), ETH_ALEN);
		FUNC10(pattrib->ra, pattrib->dst, ETH_ALEN);
		FUNC10(pattrib->ta, pattrib->src, ETH_ALEN);
		FUNC10(pattrib->bssid,  mybssid, ETH_ALEN);
		*psta = FUNC13(pstapriv, pattrib->bssid);
		if (*psta == NULL)
			return _FAIL;
	} else {
		return _FAIL;
	}
	return _SUCCESS;
}