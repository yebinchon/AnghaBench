
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned char u8 ;
struct sta_priv {int dummy; } ;
struct sta_info {int dummy; } ;
struct rx_pkt_attrib {int src; int ra; int bssid; } ;
struct recv_frame {TYPE_1__* pkt; struct rx_pkt_attrib attrib; } ;
struct mlme_priv {int dummy; } ;
struct adapter {int eeprompriv; struct mlme_priv mlmepriv; struct sta_priv stapriv; } ;
struct TYPE_2__ {unsigned char* data; } ;


 int BIT (int) ;
 int DBG_88E (char*,int ) ;
 int ETH_ALEN ;
 int GetFrameSubType (unsigned char*) ;
 int RTW_RX_HANDLED ;
 int RT_TRACE (int ,int ,char*) ;
 int WIFI_AP_STATE ;
 int WIFI_QOS_DATA_TYPE ;
 int WLAN_REASON_CLASS3_FRAME_FROM_NONASSOC_STA ;
 int _FAIL ;
 int _SUCCESS ;
 int _drv_err_ ;
 int _module_rtl871x_recv_c_ ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 int count_rx_stats (struct adapter*,struct recv_frame*,struct sta_info*) ;
 unsigned char* get_bssid (struct mlme_priv*) ;
 int issue_deauth (struct adapter*,int ,int ) ;
 scalar_t__ memcmp (int ,unsigned char*,int ) ;
 unsigned char* myid (int *) ;
 int process_pwrbit_data (struct adapter*,struct recv_frame*) ;
 int process_wmmps_data (struct adapter*,struct recv_frame*) ;
 struct sta_info* rtw_get_stainfo (struct sta_priv*,int ) ;

__attribute__((used)) static int sta2ap_data_frame(struct adapter *adapter,
        struct recv_frame *precv_frame,
        struct sta_info **psta)
{
 struct rx_pkt_attrib *pattrib = &precv_frame->attrib;
 struct sta_priv *pstapriv = &adapter->stapriv;
 struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
 u8 *ptr = precv_frame->pkt->data;
 unsigned char *mybssid = get_bssid(pmlmepriv);
 int ret = _SUCCESS;

 if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {

  if (memcmp(pattrib->bssid, mybssid, ETH_ALEN)) {
   ret = _FAIL;
   goto exit;
  }

  *psta = rtw_get_stainfo(pstapriv, pattrib->src);
  if (!*psta) {
   RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("can't get psta under AP_MODE; drop pkt\n"));
   DBG_88E("issue_deauth to sta=%pM for the reason(7)\n", (pattrib->src));

   issue_deauth(adapter, pattrib->src, WLAN_REASON_CLASS3_FRAME_FROM_NONASSOC_STA);

   ret = RTW_RX_HANDLED;
   goto exit;
  }

  process_pwrbit_data(adapter, precv_frame);

  if ((GetFrameSubType(ptr) & WIFI_QOS_DATA_TYPE) == WIFI_QOS_DATA_TYPE)
   process_wmmps_data(adapter, precv_frame);

  if (GetFrameSubType(ptr) & BIT(6)) {

   count_rx_stats(adapter, precv_frame, *psta);
   ret = RTW_RX_HANDLED;
   goto exit;
  }
 } else {
  u8 *myhwaddr = myid(&adapter->eeprompriv);

  if (memcmp(pattrib->ra, myhwaddr, ETH_ALEN)) {
   ret = RTW_RX_HANDLED;
   goto exit;
  }
  DBG_88E("issue_deauth to sta=%pM for the reason(7)\n", (pattrib->src));
  issue_deauth(adapter, pattrib->src, WLAN_REASON_CLASS3_FRAME_FROM_NONASSOC_STA);
  ret = RTW_RX_HANDLED;
  goto exit;
 }

exit:

 return ret;
}
