
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlme_priv {int dummy; } ;
struct adapter {struct mlme_priv mlmepriv; } ;


 int WIFI_AP_CONNECTED ;
 int WIFI_AP_STATE ;
 int WIFI_ASOC_STATE ;
 int WIFI_P2P_GC_CONNECTED ;
 int WIFI_P2P_GO_CONNECTED ;
 int WIFI_STA_CONNECTED ;
 int check_fwstate (struct mlme_priv*,int ) ;

__attribute__((used)) static u32 _halbtcoutsrc_GetWifiLinkStatus(struct adapter *padapter)
{
 struct mlme_priv *pmlmepriv;
 u8 bp2p;
 u32 portConnectedStatus;


 pmlmepriv = &padapter->mlmepriv;
 bp2p = 0;
 portConnectedStatus = 0;

 if (check_fwstate(pmlmepriv, WIFI_ASOC_STATE) == 1) {
  if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == 1) {
   if (bp2p)
    portConnectedStatus |= WIFI_P2P_GO_CONNECTED;
   else
    portConnectedStatus |= WIFI_AP_CONNECTED;
  } else {
   if (bp2p)
    portConnectedStatus |= WIFI_P2P_GC_CONNECTED;
   else
    portConnectedStatus |= WIFI_STA_CONNECTED;
  }
 }

 return portConnectedStatus;
}
