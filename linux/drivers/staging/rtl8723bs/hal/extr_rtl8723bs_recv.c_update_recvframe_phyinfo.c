
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int RecvSignalPower; } ;
struct rx_pkt_attrib {int data_rate; TYPE_1__ phy_info; int crc_err; int icv_err; } ;
struct TYPE_5__ {struct sta_info* psta; struct rx_pkt_attrib attrib; struct adapter* adapter; } ;
struct TYPE_6__ {TYPE_2__ hdr; } ;
union recv_frame {TYPE_3__ u; } ;
typedef int u8 ;
typedef int u32 ;
struct sta_priv {int dummy; } ;
struct sta_info {int mac_id; int rssi; } ;
struct phy_stat {int dummy; } ;
struct odm_phy_info {int dummy; } ;
struct odm_packet_info {int data_rate; int station_id; int bssid_match; int to_self; int is_beacon; } ;
struct hal_com_data {int odmpriv; } ;
struct adapter {int mlmepriv; struct sta_priv stapriv; int eeprompriv; } ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 scalar_t__ GetFrameSubType (int *) ;
 int IsFrameTypeCtrl (int *) ;
 int ODM_PhyStatusQuery (int *,struct odm_phy_info*,int *,struct odm_packet_info*) ;
 int WIFI_ADHOC_MASTER_STATE ;
 int WIFI_ADHOC_STATE ;
 int WIFI_AP_STATE ;
 scalar_t__ WIFI_BEACON ;
 int check_fwstate (int *,int) ;
 scalar_t__ ether_addr_equal (int *,int *) ;
 int * get_bssid (int *) ;
 int * get_hdr_bssid (int *) ;
 int * get_ra (int *) ;
 int * get_recvframe_data (union recv_frame*) ;
 int * get_ta (int *) ;
 int * myid (int *) ;
 int rtl8723b_process_phy_info (struct adapter*,union recv_frame*) ;
 struct sta_info* rtw_get_stainfo (struct sta_priv*,int *) ;

__attribute__((used)) static void update_recvframe_phyinfo(union recv_frame *precvframe,
         struct phy_stat *pphy_status)
{
 struct adapter *padapter = precvframe->u.hdr.adapter;
 struct rx_pkt_attrib *pattrib = &precvframe->u.hdr.attrib;
 struct hal_com_data *p_hal_data = GET_HAL_DATA(padapter);
 struct odm_phy_info *p_phy_info =
  (struct odm_phy_info *)(&pattrib->phy_info);

 u8 *wlanhdr;
 u8 *my_bssid;
 u8 *rx_bssid;
 u8 *rx_ra;
 u8 *my_hwaddr;
 u8 *sa = ((void*)0);

 struct odm_packet_info pkt_info = {
  .data_rate = 0x00,
  .station_id = 0x00,
  .bssid_match = 0,
  .to_self = 0,
  .is_beacon = 0,
 };


 struct sta_priv *pstapriv;
 struct sta_info *psta;

 wlanhdr = get_recvframe_data(precvframe);
 my_bssid = get_bssid(&padapter->mlmepriv);
 rx_bssid = get_hdr_bssid(wlanhdr);
 pkt_info.bssid_match = ((!IsFrameTypeCtrl(wlanhdr)) &&
    !pattrib->icv_err && !pattrib->crc_err &&
    ether_addr_equal(rx_bssid, my_bssid));

 rx_ra = get_ra(wlanhdr);
 my_hwaddr = myid(&padapter->eeprompriv);
 pkt_info.to_self = pkt_info.bssid_match &&
  ether_addr_equal(rx_ra, my_hwaddr);


 pkt_info.is_beacon = pkt_info.bssid_match &&
  (GetFrameSubType(wlanhdr) == WIFI_BEACON);

 sa = get_ta(wlanhdr);

 pkt_info.station_id = 0xFF;

 pstapriv = &padapter->stapriv;
 psta = rtw_get_stainfo(pstapriv, sa);
 if (psta) {
  pkt_info.station_id = psta->mac_id;


 }
 pkt_info.data_rate = pattrib->data_rate;



 ODM_PhyStatusQuery(&p_hal_data->odmpriv, p_phy_info,
      (u8 *)pphy_status, &(pkt_info));
 if (psta)
  psta->rssi = pattrib->phy_info.RecvSignalPower;

 precvframe->u.hdr.psta = ((void*)0);
 if (
  pkt_info.bssid_match &&
  (check_fwstate(&padapter->mlmepriv, WIFI_AP_STATE) == 1)
 ) {
  if (psta) {
   precvframe->u.hdr.psta = psta;
   rtl8723b_process_phy_info(padapter, precvframe);
  }
 } else if (pkt_info.to_self || pkt_info.is_beacon) {
  u32 adhoc_state = WIFI_ADHOC_STATE | WIFI_ADHOC_MASTER_STATE;
  if (check_fwstate(&padapter->mlmepriv, adhoc_state))
   if (psta)
    precvframe->u.hdr.psta = psta;
  rtl8723b_process_phy_info(padapter, precvframe);
 }
}
