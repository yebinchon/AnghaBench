
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sta_priv {int max_num_sta; scalar_t__* sta_aid; } ;
struct mlme_priv {int dummy; } ;
struct mlme_ext_info {TYPE_1__* FW_sta_info; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; struct sta_priv stapriv; struct mlme_priv mlmepriv; } ;
struct TYPE_2__ {int status; } ;


 int IBSS_START_MAC_ID ;
 int NUM_STA ;
 int WIFI_AP_STATE ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;

__attribute__((used)) static u8 search_max_mac_id(struct adapter *padapter)
{
 u8 mac_id;





 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 {
  for (mac_id = NUM_STA-1; mac_id >= IBSS_START_MAC_ID; mac_id--) {
   if (pmlmeinfo->FW_sta_info[mac_id].status == 1)
    break;
  }
 }
 return mac_id;
}
