
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int btdmAntNum; } ;
struct TYPE_8__ {int bBinded; TYPE_1__ boardInfo; } ;
typedef TYPE_2__* PBTC_COEXIST ;


 int EXhalbtc8723b1ant_HaltNotify (TYPE_2__*) ;
 int EXhalbtc8723b2ant_HaltNotify (TYPE_2__*) ;
 int halbtcoutsrc_IsBtCoexistAvailable (TYPE_2__*) ;

void EXhalbtcoutsrc_HaltNotify(PBTC_COEXIST pBtCoexist)
{
 if (!halbtcoutsrc_IsBtCoexistAvailable(pBtCoexist))
  return;

 if (pBtCoexist->boardInfo.btdmAntNum == 2)
  EXhalbtc8723b2ant_HaltNotify(pBtCoexist);
 else if (pBtCoexist->boardInfo.btdmAntNum == 1)
  EXhalbtc8723b1ant_HaltNotify(pBtCoexist);

 pBtCoexist->bBinded = 0;
}
