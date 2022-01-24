#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sta_priv {int dummy; } ;
struct sta_info {int mac_id; } ;
struct rx_pkt_attrib {int /*<<< orphan*/  mcs_rate; int /*<<< orphan*/  crc_err; int /*<<< orphan*/  icv_err; int /*<<< orphan*/  phy_info; } ;
struct recv_frame {struct sta_info* psta; TYPE_1__* pkt; struct rx_pkt_attrib attrib; struct adapter* adapter; } ;
struct phy_stat {int dummy; } ;
struct odm_phy_status_info {int dummy; } ;
struct odm_per_pkt_info {int bPacketMatchBSSID; int bPacketToSelf; int bPacketBeacon; int StationID; int /*<<< orphan*/  Rate; } ;
struct TYPE_8__ {int /*<<< orphan*/ * MacAddress; } ;
struct TYPE_9__ {TYPE_2__ network; } ;
struct TYPE_11__ {TYPE_3__ cur_network; } ;
struct adapter {TYPE_5__ mlmepriv; TYPE_4__* HalData; struct sta_priv stapriv; int /*<<< orphan*/  eeprompriv; } ;
struct TYPE_10__ {int /*<<< orphan*/  odmpriv; } ;
struct TYPE_7__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct odm_phy_status_info*,int /*<<< orphan*/ *,struct odm_per_pkt_info*) ; 
 int WIFI_ADHOC_MASTER_STATE ; 
 int WIFI_ADHOC_STATE ; 
 int WIFI_AP_STATE ; 
 scalar_t__ WIFI_BEACON ; 
 int WIFI_STATION_STATE ; 
 scalar_t__ FUNC3 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*,struct recv_frame*) ; 
 struct sta_info* FUNC11 (struct sta_priv*,int /*<<< orphan*/ *) ; 

void FUNC12(struct recv_frame *precvframe,
				  struct phy_stat *pphy_status)
{
	struct adapter *padapter = precvframe->adapter;
	struct rx_pkt_attrib *pattrib = &precvframe->attrib;
	struct odm_phy_status_info *pPHYInfo  = (struct odm_phy_status_info *)(&pattrib->phy_info);
	u8 *wlanhdr;
	struct odm_per_pkt_info	pkt_info;
	u8 *sa = NULL;
	struct sta_priv *pstapriv;
	struct sta_info *psta;

	pkt_info.bPacketMatchBSSID = false;
	pkt_info.bPacketToSelf = false;
	pkt_info.bPacketBeacon = false;

	wlanhdr = precvframe->pkt->data;

	pkt_info.bPacketMatchBSSID = ((!FUNC1(wlanhdr)) &&
		!pattrib->icv_err && !pattrib->crc_err &&
		!FUNC8(FUNC6(wlanhdr),
		 FUNC4(&padapter->mlmepriv), ETH_ALEN));

	pkt_info.bPacketToSelf = pkt_info.bPacketMatchBSSID &&
				 (!FUNC8(FUNC5(wlanhdr),
				  FUNC9(&padapter->eeprompriv), ETH_ALEN));

	pkt_info.bPacketBeacon = pkt_info.bPacketMatchBSSID &&
				 (FUNC0(wlanhdr) == WIFI_BEACON);

	if (pkt_info.bPacketBeacon) {
		if (FUNC3(&padapter->mlmepriv, WIFI_STATION_STATE))
			sa = padapter->mlmepriv.cur_network.network.MacAddress;
		/* to do Ad-hoc */
	} else {
		sa = FUNC7(wlanhdr);
	}

	pstapriv = &padapter->stapriv;
	pkt_info.StationID = 0xFF;
	psta = FUNC11(pstapriv, sa);
	if (psta)
		pkt_info.StationID = psta->mac_id;
	pkt_info.Rate = pattrib->mcs_rate;

	FUNC2(&padapter->HalData->odmpriv, pPHYInfo,
			   (u8 *)pphy_status, &(pkt_info));

	precvframe->psta = NULL;
	if (pkt_info.bPacketMatchBSSID &&
	    (FUNC3(&padapter->mlmepriv, WIFI_AP_STATE))) {
		if (psta) {
			precvframe->psta = psta;
			FUNC10(padapter, precvframe);
		}
	} else if (pkt_info.bPacketToSelf || pkt_info.bPacketBeacon) {
		if (FUNC3(&padapter->mlmepriv, WIFI_ADHOC_STATE|WIFI_ADHOC_MASTER_STATE)) {
			if (psta)
				precvframe->psta = psta;
		}
		FUNC10(padapter, precvframe);
	}
}