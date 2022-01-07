
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct adapter {int dummy; } ;
struct TYPE_3__ {struct adapter* Adapter; } ;
typedef TYPE_1__* PBTC_COEXIST ;


 int _halbtcoutsrc_GetWifiLinkStatus (struct adapter*) ;

__attribute__((used)) static u32 halbtcoutsrc_GetWifiLinkStatus(PBTC_COEXIST pBtCoexist)
{






 struct adapter *padapter;
 u32 retVal;
 u32 portConnectedStatus, numOfConnectedPort;


 padapter = pBtCoexist->Adapter;
 portConnectedStatus = 0;
 numOfConnectedPort = 0;

 retVal = _halbtcoutsrc_GetWifiLinkStatus(padapter);
 if (retVal) {
  portConnectedStatus |= retVal;
  numOfConnectedPort++;
 }

 retVal = (numOfConnectedPort << 16) | portConnectedStatus;

 return retVal;
}
