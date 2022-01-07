
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ bBusyTraffic; } ;
struct mlme_priv {TYPE_1__ LinkDetectInfo; } ;
struct adapter {struct mlme_priv mlmepriv; } ;


 int WIFI_AP_STATE ;
 int WIFI_ASOC_STATE ;
 int check_fwstate (struct mlme_priv*,int ) ;

__attribute__((used)) static u8 halbtcoutsrc_IsWifiBusy(struct adapter *padapter)
{
 struct mlme_priv *pmlmepriv;


 pmlmepriv = &padapter->mlmepriv;

 if (check_fwstate(pmlmepriv, WIFI_ASOC_STATE) == 1) {
  if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == 1)
   return 1;
  if (pmlmepriv->LinkDetectInfo.bBusyTraffic)
   return 1;
 }

 return 0;
}
