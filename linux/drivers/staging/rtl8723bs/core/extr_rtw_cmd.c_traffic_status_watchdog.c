
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_4__ {int bBusyTraffic; int NumRxOkInPeriod; int NumTxOkInPeriod; int NumRxUnicastOkInPeriod; int TrafficTransitionCount; int bTxBusyTraffic; int bRxBusyTraffic; int bHigherBusyTraffic; int bHigherBusyRxTraffic; int bHigherBusyTxTraffic; } ;
struct mlme_priv {TYPE_2__ LinkDetectInfo; } ;
struct dvobj_priv {TYPE_1__* padapters; } ;
struct adapter {struct mlme_priv mlmepriv; } ;
struct TYPE_3__ {struct mlme_priv mlmepriv; } ;


 int LPS_CTRL_TRAFFIC_BUSY ;
 int LPS_Enter (struct adapter*,char*) ;
 int LPS_Leave (struct adapter*,char*) ;
 int WIFI_ASOC_STATE ;
 int _FW_LINKED ;
 struct dvobj_priv* adapter_to_dvobj (struct adapter*) ;
 int check_fwstate (struct mlme_priv*,int ) ;
 int collect_traffic_statistics (struct adapter*) ;
 int rtw_lps_ctrl_wk_cmd (struct adapter*,int ,int) ;

u8 traffic_status_watchdog(struct adapter *padapter, u8 from_timer)
{
 u8 bEnterPS = 0;
 u16 BusyThresholdHigh = 25;
 u16 BusyThresholdLow = 10;
 u16 BusyThreshold = BusyThresholdHigh;
 u8 bBusyTraffic = 0, bTxBusyTraffic = 0, bRxBusyTraffic = 0;
 u8 bHigherBusyTraffic = 0, bHigherBusyRxTraffic = 0, bHigherBusyTxTraffic = 0;

 struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);

 collect_traffic_statistics(padapter);




 if ((check_fwstate(pmlmepriv, _FW_LINKED) == 1)
                                              ) {

  if (pmlmepriv->LinkDetectInfo.bBusyTraffic)
    BusyThreshold = BusyThresholdLow;

  if (pmlmepriv->LinkDetectInfo.NumRxOkInPeriod > BusyThreshold ||
   pmlmepriv->LinkDetectInfo.NumTxOkInPeriod > BusyThreshold) {
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
   (pmlmepriv->LinkDetectInfo.NumRxUnicastOkInPeriod > 2)) {

   bEnterPS = 0;

   if (bBusyTraffic == 1) {
    if (pmlmepriv->LinkDetectInfo.TrafficTransitionCount <= 4)
     pmlmepriv->LinkDetectInfo.TrafficTransitionCount = 4;

    pmlmepriv->LinkDetectInfo.TrafficTransitionCount++;



    if (pmlmepriv->LinkDetectInfo.TrafficTransitionCount > 30 ) {
     pmlmepriv->LinkDetectInfo.TrafficTransitionCount = 30;
    }
   }
  } else {


   if (pmlmepriv->LinkDetectInfo.TrafficTransitionCount >= 2)
    pmlmepriv->LinkDetectInfo.TrafficTransitionCount -= 2;
   else
    pmlmepriv->LinkDetectInfo.TrafficTransitionCount = 0;

   if (pmlmepriv->LinkDetectInfo.TrafficTransitionCount == 0)
    bEnterPS = 1;
  }


  if (bEnterPS) {
   if (!from_timer)
    LPS_Enter(padapter, "TRAFFIC_IDLE");
  } else {
   if (!from_timer)
    LPS_Leave(padapter, "TRAFFIC_BUSY");
   else
    rtw_lps_ctrl_wk_cmd(padapter, LPS_CTRL_TRAFFIC_BUSY, 1);
  }
 } else {
  struct dvobj_priv *dvobj = adapter_to_dvobj(padapter);
  int n_assoc_iface = 0;

  if (check_fwstate(&(dvobj->padapters->mlmepriv), WIFI_ASOC_STATE))
   n_assoc_iface++;

  if (!from_timer && n_assoc_iface == 0)
   LPS_Leave(padapter, "NON_LINKED");
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

 return bEnterPS;

}
