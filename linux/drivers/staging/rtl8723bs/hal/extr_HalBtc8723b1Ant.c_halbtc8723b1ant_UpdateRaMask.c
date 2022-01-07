
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {scalar_t__ curRaMask; scalar_t__ preRaMask; } ;
struct TYPE_5__ {int (* fBtcSet ) (TYPE_1__*,int ,scalar_t__*) ;} ;
typedef TYPE_1__* PBTC_COEXIST ;


 int BTC_SET_ACT_UPDATE_RAMASK ;
 TYPE_3__* pCoexDm ;
 int stub1 (TYPE_1__*,int ,scalar_t__*) ;

__attribute__((used)) static void halbtc8723b1ant_UpdateRaMask(
 PBTC_COEXIST pBtCoexist, bool bForceExec, u32 disRateMask
)
{
 pCoexDm->curRaMask = disRateMask;

 if (bForceExec || (pCoexDm->preRaMask != pCoexDm->curRaMask))
  pBtCoexist->fBtcSet(
   pBtCoexist,
   BTC_SET_ACT_UPDATE_RAMASK,
   &pCoexDm->curRaMask
  );
 pCoexDm->preRaMask = pCoexDm->curRaMask;
}
