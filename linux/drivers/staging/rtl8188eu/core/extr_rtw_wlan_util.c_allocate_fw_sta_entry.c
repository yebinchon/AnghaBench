
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlme_ext_info {TYPE_1__* FW_sta_info; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;
struct TYPE_2__ {int status; scalar_t__ retry; } ;


 unsigned int IBSS_START_MAC_ID ;
 unsigned int NUM_STA ;

int allocate_fw_sta_entry(struct adapter *padapter)
{
 unsigned int mac_id;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;

 for (mac_id = IBSS_START_MAC_ID; mac_id < NUM_STA; mac_id++) {
  if (pmlmeinfo->FW_sta_info[mac_id].status == 0) {
   pmlmeinfo->FW_sta_info[mac_id].status = 1;
   pmlmeinfo->FW_sta_info[mac_id].retry = 0;
   break;
  }
 }

 return mac_id;
}
