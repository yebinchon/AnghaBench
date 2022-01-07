
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sa_data; int sa_family; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
struct wlan_bssid_ex {int MacAddress; } ;
struct TYPE_5__ {int MacAddress; } ;
struct TYPE_6__ {TYPE_2__ network; } ;
struct mlme_priv {TYPE_3__ cur_network; } ;
struct mlme_ext_info {int network; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; struct mlme_priv mlmepriv; } ;


 int ARPHRD_ETHER ;
 int DBG_871X_LEVEL (int ,char*) ;
 int ETH_ALEN ;
 int WIFI_ADHOC_MASTER_STATE ;
 int _drv_always_ ;
 int check_fwstate (struct mlme_priv*,int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (union iwreq_data*,int ,int) ;

void rtw_indicate_wx_assoc_event(struct adapter *padapter)
{
 union iwreq_data wrqu;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 struct wlan_bssid_ex *pnetwork = (struct wlan_bssid_ex *)(&(pmlmeinfo->network));

 memset(&wrqu, 0, sizeof(union iwreq_data));

 wrqu.ap_addr.sa_family = ARPHRD_ETHER;

 if (check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) ==1)
  memcpy(wrqu.ap_addr.sa_data, pnetwork->MacAddress, ETH_ALEN);
 else
  memcpy(wrqu.ap_addr.sa_data, pmlmepriv->cur_network.network.MacAddress, ETH_ALEN);

 DBG_871X_LEVEL(_drv_always_, "assoc success\n");
}
