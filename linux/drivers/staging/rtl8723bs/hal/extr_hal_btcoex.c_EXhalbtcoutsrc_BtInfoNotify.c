
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_9__ {int btdmAntNum; } ;
struct TYPE_8__ {int cntBtInfoNotify; } ;
struct TYPE_10__ {TYPE_2__ boardInfo; TYPE_1__ statistics; } ;
typedef TYPE_3__* PBTC_COEXIST ;


 int EXhalbtc8723b1ant_BtInfoNotify (TYPE_3__*,int *,int ) ;
 int EXhalbtc8723b2ant_BtInfoNotify (TYPE_3__*,int *,int ) ;
 int halbtcoutsrc_IsBtCoexistAvailable (TYPE_3__*) ;

void EXhalbtcoutsrc_BtInfoNotify(PBTC_COEXIST pBtCoexist, u8 *tmpBuf, u8 length)
{
 if (!halbtcoutsrc_IsBtCoexistAvailable(pBtCoexist))
  return;

 pBtCoexist->statistics.cntBtInfoNotify++;




 if (pBtCoexist->boardInfo.btdmAntNum == 2)
  EXhalbtc8723b2ant_BtInfoNotify(pBtCoexist, tmpBuf, length);
 else if (pBtCoexist->boardInfo.btdmAntNum == 1)
  EXhalbtc8723b1ant_BtInfoNotify(pBtCoexist, tmpBuf, length);


}
