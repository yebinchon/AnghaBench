
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct sta_priv {int dummy; } ;
struct sta_info {int mac_id; } ;
struct rx_pkt_attrib {int mcs_rate; int crc_err; int icv_err; int phy_info; } ;
struct recv_frame {struct sta_info* psta; TYPE_1__* pkt; struct rx_pkt_attrib attrib; struct adapter* adapter; } ;
struct phy_stat {int dummy; } ;
struct odm_phy_status_info {int dummy; } ;
struct odm_per_pkt_info {int bPacketMatchBSSID; int bPacketToSelf; int bPacketBeacon; int StationID; int Rate; } ;
struct TYPE_8__ {int * MacAddress; } ;
struct TYPE_9__ {TYPE_2__ network; } ;
struct TYPE_11__ {TYPE_3__ cur_network; } ;
struct adapter {TYPE_5__ mlmepriv; TYPE_4__* HalData; struct sta_priv stapriv; int eeprompriv; } ;
struct TYPE_10__ {int odmpriv; } ;
struct TYPE_7__ {int * data; } ;


 int ETH_ALEN ;
 scalar_t__ GetFrameSubType (int *) ;
 int IsFrameTypeCtrl (int *) ;
 int ODM_PhyStatusQuery (int *,struct odm_phy_status_info*,int *,struct odm_per_pkt_info*) ;
 int WIFI_ADHOC_MASTER_STATE ;
 int WIFI_ADHOC_STATE ;
 int WIFI_AP_STATE ;
 scalar_t__ WIFI_BEACON ;
 int WIFI_STATION_STATE ;
 scalar_t__ check_fwstate (TYPE_5__*,int) ;
 int get_bssid (TYPE_5__*) ;
 int get_da (int *) ;
 int get_hdr_bssid (int *) ;
 int * get_sa (int *) ;
 int memcmp (int ,int ,int ) ;
 int myid (int *) ;
 int rtl8188e_process_phy_info (struct adapter*,struct recv_frame*) ;
 struct sta_info* rtw_get_stainfo (struct sta_priv*,int *) ;

void update_recvframe_phyinfo_88e(struct recv_frame *precvframe,
      struct phy_stat *pphy_status)
{
 struct adapter *padapter = precvframe->adapter;
 struct rx_pkt_attrib *pattrib = &precvframe->attrib;
 struct odm_phy_status_info *pPHYInfo = (struct odm_phy_status_info *)(&pattrib->phy_info);
 u8 *wlanhdr;
 struct odm_per_pkt_info pkt_info;
 u8 *sa = ((void*)0);
 struct sta_priv *pstapriv;
 struct sta_info *psta;

 pkt_info.bPacketMatchBSSID = 0;
 pkt_info.bPacketToSelf = 0;
 pkt_info.bPacketBeacon = 0;

 wlanhdr = precvframe->pkt->data;

 pkt_info.bPacketMatchBSSID = ((!IsFrameTypeCtrl(wlanhdr)) &&
  !pattrib->icv_err && !pattrib->crc_err &&
  !memcmp(get_hdr_bssid(wlanhdr),
   get_bssid(&padapter->mlmepriv), ETH_ALEN));

 pkt_info.bPacketToSelf = pkt_info.bPacketMatchBSSID &&
     (!memcmp(get_da(wlanhdr),
      myid(&padapter->eeprompriv), ETH_ALEN));

 pkt_info.bPacketBeacon = pkt_info.bPacketMatchBSSID &&
     (GetFrameSubType(wlanhdr) == WIFI_BEACON);

 if (pkt_info.bPacketBeacon) {
  if (check_fwstate(&padapter->mlmepriv, WIFI_STATION_STATE))
   sa = padapter->mlmepriv.cur_network.network.MacAddress;

 } else {
  sa = get_sa(wlanhdr);
 }

 pstapriv = &padapter->stapriv;
 pkt_info.StationID = 0xFF;
 psta = rtw_get_stainfo(pstapriv, sa);
 if (psta)
  pkt_info.StationID = psta->mac_id;
 pkt_info.Rate = pattrib->mcs_rate;

 ODM_PhyStatusQuery(&padapter->HalData->odmpriv, pPHYInfo,
      (u8 *)pphy_status, &(pkt_info));

 precvframe->psta = ((void*)0);
 if (pkt_info.bPacketMatchBSSID &&
     (check_fwstate(&padapter->mlmepriv, WIFI_AP_STATE))) {
  if (psta) {
   precvframe->psta = psta;
   rtl8188e_process_phy_info(padapter, precvframe);
  }
 } else if (pkt_info.bPacketToSelf || pkt_info.bPacketBeacon) {
  if (check_fwstate(&padapter->mlmepriv, WIFI_ADHOC_STATE|WIFI_ADHOC_MASTER_STATE)) {
   if (psta)
    precvframe->psta = psta;
  }
  rtl8188e_process_phy_info(padapter, precvframe);
 }
}
