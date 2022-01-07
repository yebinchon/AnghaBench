
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int btdmAntNum; } ;
struct TYPE_8__ {int cntInitCoexDm; } ;
struct TYPE_10__ {int bInitilized; TYPE_2__ boardInfo; TYPE_1__ statistics; } ;
typedef TYPE_3__* PBTC_COEXIST ;


 int EXhalbtc8723b1ant_InitCoexDm (TYPE_3__*) ;
 int EXhalbtc8723b2ant_InitCoexDm (TYPE_3__*) ;
 int halbtcoutsrc_IsBtCoexistAvailable (TYPE_3__*) ;

void EXhalbtcoutsrc_InitCoexDm(PBTC_COEXIST pBtCoexist)
{
 if (!halbtcoutsrc_IsBtCoexistAvailable(pBtCoexist))
  return;

 pBtCoexist->statistics.cntInitCoexDm++;

 if (pBtCoexist->boardInfo.btdmAntNum == 2)
  EXhalbtc8723b2ant_InitCoexDm(pBtCoexist);
 else if (pBtCoexist->boardInfo.btdmAntNum == 1)
  EXhalbtc8723b1ant_InitCoexDm(pBtCoexist);

 pBtCoexist->bInitilized = 1;
}
