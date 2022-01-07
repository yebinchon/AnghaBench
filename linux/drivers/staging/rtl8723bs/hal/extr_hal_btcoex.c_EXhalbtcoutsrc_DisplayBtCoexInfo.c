
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int btdmAntNum; } ;
struct TYPE_10__ {TYPE_1__ boardInfo; } ;
typedef TYPE_2__* PBTC_COEXIST ;


 int EXhalbtc8723b1ant_DisplayCoexInfo (TYPE_2__*) ;
 int EXhalbtc8723b2ant_DisplayCoexInfo (TYPE_2__*) ;
 int halbtcoutsrc_IsBtCoexistAvailable (TYPE_2__*) ;
 int halbtcoutsrc_LeaveLowPower (TYPE_2__*) ;
 int halbtcoutsrc_NormalLowPower (TYPE_2__*) ;

void EXhalbtcoutsrc_DisplayBtCoexInfo(PBTC_COEXIST pBtCoexist)
{
 if (!halbtcoutsrc_IsBtCoexistAvailable(pBtCoexist))
  return;

 halbtcoutsrc_LeaveLowPower(pBtCoexist);

 if (pBtCoexist->boardInfo.btdmAntNum == 2)
  EXhalbtc8723b2ant_DisplayCoexInfo(pBtCoexist);
 else if (pBtCoexist->boardInfo.btdmAntNum == 1)
  EXhalbtc8723b1ant_DisplayCoexInfo(pBtCoexist);

 halbtcoutsrc_NormalLowPower(pBtCoexist);
}
