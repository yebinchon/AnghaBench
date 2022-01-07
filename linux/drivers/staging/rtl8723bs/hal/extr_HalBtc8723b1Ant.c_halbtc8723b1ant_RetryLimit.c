
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int curRetryLimitType; int preRetryLimitType; int backupRetryLimit; } ;
struct TYPE_6__ {int (* fBtcWrite2Byte ) (TYPE_1__*,int,int) ;} ;
typedef TYPE_1__* PBTC_COEXIST ;


 TYPE_4__* pCoexDm ;
 int stub1 (TYPE_1__*,int,int) ;
 int stub2 (TYPE_1__*,int,int) ;

__attribute__((used)) static void halbtc8723b1ant_RetryLimit(
 PBTC_COEXIST pBtCoexist, bool bForceExec, u8 type
)
{
 pCoexDm->curRetryLimitType = type;

 if (
  bForceExec ||
  (pCoexDm->preRetryLimitType != pCoexDm->curRetryLimitType)
 ) {
  switch (pCoexDm->curRetryLimitType) {
  case 0:
   pBtCoexist->fBtcWrite2Byte(
    pBtCoexist, 0x42a, pCoexDm->backupRetryLimit
   );
   break;
  case 1:
   pBtCoexist->fBtcWrite2Byte(pBtCoexist, 0x42a, 0x0808);
   break;
  default:
   break;
  }
 }

 pCoexDm->preRetryLimitType = pCoexDm->curRetryLimitType;
}
