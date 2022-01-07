
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rx_pkt_attrib {int * bssid; int * src; int * ta; int * dst; int * ra; } ;
struct TYPE_3__ {struct rx_pkt_attrib attrib; int * rx_data; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
typedef int u8 ;
struct sta_priv {int dummy; } ;
struct sta_info {int dummy; } ;
struct mlme_priv {int dummy; } ;
struct _adapter {int eeprompriv; struct mlme_priv mlmepriv; struct sta_priv stapriv; } ;
typedef int sint ;


 int BIT (int) ;
 int ETH_ALEN ;
 int * GetAddr1Ptr (int *) ;
 int * GetAddr2Ptr (int *) ;
 int * GetAddr3Ptr (int *) ;
 int GetFrameSubType (int *) ;
 scalar_t__ WIFI_DATA_NULL ;
 int WIFI_MP_STATE ;
 int WIFI_QOS_DATA_TYPE ;
 int WIFI_STATION_STATE ;
 int _FAIL ;
 int _FW_LINKED ;
 int _SUCCESS ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 int * get_bssid (struct mlme_priv*) ;
 int is_multicast_ether_addr (int *) ;
 scalar_t__ is_zero_ether_addr (int *) ;
 scalar_t__ memcmp (int *,int *,int ) ;
 int memcpy (int *,int *,int ) ;
 int * myid (int *) ;
 struct sta_info* r8712_get_bcmc_stainfo (struct _adapter*) ;
 struct sta_info* r8712_get_stainfo (struct sta_priv*,int *) ;

__attribute__((used)) static sint ap2sta_data_frame(struct _adapter *adapter,
         union recv_frame *precv_frame,
         struct sta_info **psta)
{
 u8 *ptr = precv_frame->u.hdr.rx_data;
 struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
 struct sta_priv *pstapriv = &adapter->stapriv;
 struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
 u8 *mybssid = get_bssid(pmlmepriv);
 u8 *myhwaddr = myid(&adapter->eeprompriv);
 bool bmcast = is_multicast_ether_addr(pattrib->dst);

 if (check_fwstate(pmlmepriv, WIFI_STATION_STATE) &&
     check_fwstate(pmlmepriv, _FW_LINKED)) {

  if ((GetFrameSubType(ptr)) == WIFI_DATA_NULL)
   return _FAIL;



  if ((GetFrameSubType(ptr) & WIFI_QOS_DATA_TYPE) ==
       WIFI_QOS_DATA_TYPE) {
   if (GetFrameSubType(ptr) & (BIT(4) | BIT(5) | BIT(6)))
    return _FAIL;
  }


  if (!memcmp(myhwaddr, pattrib->src, ETH_ALEN))
   return _FAIL;


  if ((memcmp(myhwaddr, pattrib->dst, ETH_ALEN)) && (!bmcast))
   return _FAIL;

  if (is_zero_ether_addr(pattrib->bssid) ||
       is_zero_ether_addr(mybssid) ||
       (memcmp(pattrib->bssid, mybssid, ETH_ALEN)))
   return _FAIL;
  if (bmcast)
   *psta = r8712_get_bcmc_stainfo(adapter);
  else
   *psta = r8712_get_stainfo(pstapriv, pattrib->bssid);
  if (*psta == ((void*)0))
   return _FAIL;
 } else if (check_fwstate(pmlmepriv, WIFI_MP_STATE) &&
     check_fwstate(pmlmepriv, _FW_LINKED)) {
  memcpy(pattrib->dst, GetAddr1Ptr(ptr), ETH_ALEN);
  memcpy(pattrib->src, GetAddr2Ptr(ptr), ETH_ALEN);
  memcpy(pattrib->bssid, GetAddr3Ptr(ptr), ETH_ALEN);
  memcpy(pattrib->ra, pattrib->dst, ETH_ALEN);
  memcpy(pattrib->ta, pattrib->src, ETH_ALEN);
  memcpy(pattrib->bssid, mybssid, ETH_ALEN);
  *psta = r8712_get_stainfo(pstapriv, pattrib->bssid);
  if (*psta == ((void*)0))
   return _FAIL;
 } else {
  return _FAIL;
 }
 return _SUCCESS;
}
