
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int NumRxOkInPeriod; int NumTxOkInPeriod; int NumRxUnicastOkInPeriod; int bBusyTraffic; int bTxBusyTraffic; int bRxBusyTraffic; int bHigherBusyTraffic; int bHigherBusyRxTraffic; int bHigherBusyTxTraffic; } ;
struct mlme_priv {TYPE_1__ LinkDetectInfo; } ;
struct adapter {struct mlme_priv mlmepriv; } ;


 int LPS_Enter (struct adapter*) ;
 int LPS_Leave (struct adapter*) ;
 int _FW_LINKED ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;

__attribute__((used)) static void traffic_status_watchdog(struct adapter *padapter)
{
 u8 bEnterPS;
 u8 bBusyTraffic = 0, bTxBusyTraffic = 0, bRxBusyTraffic = 0;
 u8 bHigherBusyTraffic = 0, bHigherBusyRxTraffic = 0, bHigherBusyTxTraffic = 0;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;




 if (check_fwstate(pmlmepriv, _FW_LINKED)) {
  if (pmlmepriv->LinkDetectInfo.NumRxOkInPeriod > 100 ||
      pmlmepriv->LinkDetectInfo.NumTxOkInPeriod > 100) {
   bBusyTraffic = 1;

   if (pmlmepriv->LinkDetectInfo.NumRxOkInPeriod > pmlmepriv->LinkDetectInfo.NumTxOkInPeriod)
    bRxBusyTraffic = 1;
   else
    bTxBusyTraffic = 1;
  }


  if (pmlmepriv->LinkDetectInfo.NumRxOkInPeriod > 4000 ||
      pmlmepriv->LinkDetectInfo.NumTxOkInPeriod > 4000) {
   bHigherBusyTraffic = 1;

   if (pmlmepriv->LinkDetectInfo.NumRxOkInPeriod > pmlmepriv->LinkDetectInfo.NumTxOkInPeriod)
    bHigherBusyRxTraffic = 1;
   else
    bHigherBusyTxTraffic = 1;
  }


  if (((pmlmepriv->LinkDetectInfo.NumRxUnicastOkInPeriod + pmlmepriv->LinkDetectInfo.NumTxOkInPeriod) > 8) ||
      (pmlmepriv->LinkDetectInfo.NumRxUnicastOkInPeriod > 2))
   bEnterPS = 0;
  else
   bEnterPS = 1;


  if (bEnterPS)
   LPS_Enter(padapter);
  else
   LPS_Leave(padapter);
 } else {
  LPS_Leave(padapter);
 }

 pmlmepriv->LinkDetectInfo.NumRxOkInPeriod = 0;
 pmlmepriv->LinkDetectInfo.NumTxOkInPeriod = 0;
 pmlmepriv->LinkDetectInfo.NumRxUnicastOkInPeriod = 0;
 pmlmepriv->LinkDetectInfo.bBusyTraffic = bBusyTraffic;
 pmlmepriv->LinkDetectInfo.bTxBusyTraffic = bTxBusyTraffic;
 pmlmepriv->LinkDetectInfo.bRxBusyTraffic = bRxBusyTraffic;
 pmlmepriv->LinkDetectInfo.bHigherBusyTraffic = bHigherBusyTraffic;
 pmlmepriv->LinkDetectInfo.bHigherBusyRxTraffic = bHigherBusyRxTraffic;
 pmlmepriv->LinkDetectInfo.bHigherBusyTxTraffic = bHigherBusyTxTraffic;
}
