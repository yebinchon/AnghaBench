
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rx_pkt_attrib {char* dst; char* src; char* bssid; char* ra; char* ta; } ;
struct TYPE_3__ {char* rx_data; struct rx_pkt_attrib attrib; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
typedef char u8 ;
struct sta_priv {int dummy; } ;
struct sta_info {int dummy; } ;
struct mlme_priv {int dummy; } ;
struct adapter {int eeprompriv; struct mlme_priv mlmepriv; struct sta_priv stapriv; } ;
typedef scalar_t__ sint ;


 int ETH_ALEN ;
 char* GetAddr1Ptr (char*) ;
 char* GetAddr2Ptr (char*) ;
 char* GetAddr3Ptr (char*) ;
 scalar_t__ IS_MCAST (char*) ;
 int RT_TRACE (int ,int ,char*) ;
 int WIFI_ADHOC_MASTER_STATE ;
 int WIFI_ADHOC_STATE ;
 int WIFI_AP_STATE ;
 int WIFI_MP_STATE ;
 int WIFI_STATION_STATE ;
 scalar_t__ _FAIL ;
 scalar_t__ _SUCCESS ;
 int _drv_err_ ;
 int _module_rtl871x_recv_c_ ;
 int check_fwstate (struct mlme_priv*,int ) ;
 char* get_bssid (struct mlme_priv*) ;
 scalar_t__ memcmp (char*,char*,int ) ;
 int memcpy (char*,char*,int ) ;
 char* myid (int *) ;
 struct sta_info* rtw_get_bcmc_stainfo (struct adapter*) ;
 struct sta_info* rtw_get_stainfo (struct sta_priv*,char*) ;

sint sta2sta_data_frame(
 struct adapter *adapter,
 union recv_frame *precv_frame,
 struct sta_info **psta
)
{
 u8 *ptr = precv_frame->u.hdr.rx_data;
 sint ret = _SUCCESS;
 struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
 struct sta_priv *pstapriv = &adapter->stapriv;
 struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
 u8 *mybssid = get_bssid(pmlmepriv);
 u8 *myhwaddr = myid(&adapter->eeprompriv);
 u8 *sta_addr = ((void*)0);
 sint bmcast = IS_MCAST(pattrib->dst);



 if ((check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) == 1) ||
  (check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) == 1)) {


  if (!memcmp(myhwaddr, pattrib->src, ETH_ALEN)) {
   RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, (" SA ==myself\n"));
   ret = _FAIL;
   goto exit;
  }

  if ((memcmp(myhwaddr, pattrib->dst, ETH_ALEN)) && (!bmcast)) {
   ret = _FAIL;
   goto exit;
  }

  if (!memcmp(pattrib->bssid, "\x0\x0\x0\x0\x0\x0", ETH_ALEN) ||
     !memcmp(mybssid, "\x0\x0\x0\x0\x0\x0", ETH_ALEN) ||
     (memcmp(pattrib->bssid, mybssid, ETH_ALEN))) {
   ret = _FAIL;
   goto exit;
  }

  sta_addr = pattrib->src;

 } else if (check_fwstate(pmlmepriv, WIFI_STATION_STATE) == 1) {

  if (memcmp(pattrib->bssid, pattrib->src, ETH_ALEN)) {
   RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("bssid != TA under STATION_MODE; drop pkt\n"));
   ret = _FAIL;
   goto exit;
  }

  sta_addr = pattrib->bssid;
 } else if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == 1) {
  if (bmcast) {

   if (!IS_MCAST(pattrib->bssid)) {
     ret = _FAIL;
     goto exit;
   }
  } else {

   if (memcmp(pattrib->bssid, pattrib->dst, ETH_ALEN)) {
    ret = _FAIL;
    goto exit;
   }

   sta_addr = pattrib->src;
  }

 } else if (check_fwstate(pmlmepriv, WIFI_MP_STATE) == 1) {
  memcpy(pattrib->dst, GetAddr1Ptr(ptr), ETH_ALEN);
  memcpy(pattrib->src, GetAddr2Ptr(ptr), ETH_ALEN);
  memcpy(pattrib->bssid, GetAddr3Ptr(ptr), ETH_ALEN);
  memcpy(pattrib->ra, pattrib->dst, ETH_ALEN);
  memcpy(pattrib->ta, pattrib->src, ETH_ALEN);

  sta_addr = mybssid;
 } else
  ret = _FAIL;



 if (bmcast)
  *psta = rtw_get_bcmc_stainfo(adapter);
 else
  *psta = rtw_get_stainfo(pstapriv, sta_addr);

 if (!*psta) {
  RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("can't get psta under sta2sta_data_frame ; drop pkt\n"));
  ret = _FAIL;
  goto exit;
 }

exit:
 return ret;
}
