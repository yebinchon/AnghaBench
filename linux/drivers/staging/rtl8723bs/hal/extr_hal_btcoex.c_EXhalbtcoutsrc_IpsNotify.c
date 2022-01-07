
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_9__ {int btdmAntNum; } ;
struct TYPE_8__ {int cntIpsNotify; } ;
struct TYPE_10__ {TYPE_2__ boardInfo; scalar_t__ bManualControl; TYPE_1__ statistics; } ;
typedef TYPE_3__* PBTC_COEXIST ;


 scalar_t__ BTC_IPS_ENTER ;
 scalar_t__ BTC_IPS_LEAVE ;
 int EXhalbtc8723b1ant_IpsNotify (TYPE_3__*,scalar_t__) ;
 int EXhalbtc8723b2ant_IpsNotify (TYPE_3__*,scalar_t__) ;
 scalar_t__ IPS_NONE ;
 int halbtcoutsrc_IsBtCoexistAvailable (TYPE_3__*) ;

void EXhalbtcoutsrc_IpsNotify(PBTC_COEXIST pBtCoexist, u8 type)
{
 u8 ipsType;

 if (!halbtcoutsrc_IsBtCoexistAvailable(pBtCoexist))
  return;

 pBtCoexist->statistics.cntIpsNotify++;
 if (pBtCoexist->bManualControl)
  return;

 if (IPS_NONE == type)
  ipsType = BTC_IPS_LEAVE;
 else
  ipsType = BTC_IPS_ENTER;




 if (pBtCoexist->boardInfo.btdmAntNum == 2)
  EXhalbtc8723b2ant_IpsNotify(pBtCoexist, ipsType);
 else if (pBtCoexist->boardInfo.btdmAntNum == 1)
  EXhalbtc8723b1ant_IpsNotify(pBtCoexist, ipsType);


}
