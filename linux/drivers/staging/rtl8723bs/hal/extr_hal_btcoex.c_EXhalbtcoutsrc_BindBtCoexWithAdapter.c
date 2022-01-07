
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_9__ {int btdmAntPos; } ;
struct TYPE_8__ {int bBtCtrlAggBufSize; int aggBufSize; int bIncreaseScanDevNum; } ;
struct TYPE_7__ {int bProfileNotified; } ;
struct TYPE_10__ {int cntBind; } ;
struct TYPE_11__ {int bBinded; TYPE_3__ boardInfo; TYPE_2__ btInfo; TYPE_1__ stackInfo; void* Adapter; TYPE_4__ statistics; } ;
typedef TYPE_5__* PBTC_COEXIST ;


 int BTC_ANTENNA_AT_MAIN_PORT ;
 TYPE_5__ GLBtCoexist ;

__attribute__((used)) static u8 EXhalbtcoutsrc_BindBtCoexWithAdapter(void *padapter)
{
 PBTC_COEXIST pBtCoexist = &GLBtCoexist;

 if (pBtCoexist->bBinded)
  return 0;
 else
  pBtCoexist->bBinded = 1;

 pBtCoexist->statistics.cntBind++;

 pBtCoexist->Adapter = padapter;

 pBtCoexist->stackInfo.bProfileNotified = 0;

 pBtCoexist->btInfo.bBtCtrlAggBufSize = 0;
 pBtCoexist->btInfo.aggBufSize = 5;

 pBtCoexist->btInfo.bIncreaseScanDevNum = 0;


 pBtCoexist->boardInfo.btdmAntPos = BTC_ANTENNA_AT_MAIN_PORT;

 return 1;
}
