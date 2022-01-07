
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_ext_info {int state; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;


 int WIFI_FW_ASSOC_SUCCESS ;
 int WIFI_FW_STATION_STATE ;
 int _FAIL ;

int is_client_associated_to_ap(struct adapter *padapter)
{
 struct mlme_ext_priv *pmlmeext;
 struct mlme_ext_info *pmlmeinfo;

 if (!padapter)
  return _FAIL;

 pmlmeext = &padapter->mlmeextpriv;
 pmlmeinfo = &pmlmeext->mlmext_info;

 if ((pmlmeinfo->state & WIFI_FW_ASSOC_SUCCESS) &&
     (pmlmeinfo->state & 0x03) == WIFI_FW_STATION_STATE)
  return 1;
 else
  return _FAIL;
}
