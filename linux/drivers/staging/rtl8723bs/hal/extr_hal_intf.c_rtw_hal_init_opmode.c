
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_priv {int dummy; } ;
struct adapter {struct mlme_priv mlmepriv; } ;
typedef int sint ;
typedef enum NDIS_802_11_NETWORK_INFRASTRUCTURE { ____Placeholder_NDIS_802_11_NETWORK_INFRASTRUCTURE } NDIS_802_11_NETWORK_INFRASTRUCTURE ;


 int Ndis802_11APMode ;
 int Ndis802_11IBSS ;
 int Ndis802_11Infrastructure ;
 int Ndis802_11InfrastructureMax ;
 int WIFI_ADHOC_STATE ;
 int WIFI_AP_STATE ;
 int WIFI_STATION_STATE ;
 int get_fwstate (struct mlme_priv*) ;
 int rtw_setopmode_cmd (struct adapter*,int,int) ;

__attribute__((used)) static void rtw_hal_init_opmode(struct adapter *padapter)
{
 enum NDIS_802_11_NETWORK_INFRASTRUCTURE networkType = Ndis802_11InfrastructureMax;
 struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 sint fw_state;

 fw_state = get_fwstate(pmlmepriv);

 if (fw_state & WIFI_ADHOC_STATE)
  networkType = Ndis802_11IBSS;
 else if (fw_state & WIFI_STATION_STATE)
  networkType = Ndis802_11Infrastructure;
 else if (fw_state & WIFI_AP_STATE)
  networkType = Ndis802_11APMode;
 else
  return;

 rtw_setopmode_cmd(padapter, networkType, 0);
}
