
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int curAmpduTimeType; int preAmpduTimeType; int backupAmpduMaxTime; } ;
struct TYPE_6__ {int (* fBtcWrite1Byte ) (TYPE_1__*,int,int) ;} ;
typedef TYPE_1__* PBTC_COEXIST ;


 TYPE_4__* pCoexDm ;
 int stub1 (TYPE_1__*,int,int) ;
 int stub2 (TYPE_1__*,int,int) ;

__attribute__((used)) static void halbtc8723b1ant_AmpduMaxTime(
 PBTC_COEXIST pBtCoexist, bool bForceExec, u8 type
)
{
 pCoexDm->curAmpduTimeType = type;

 if (
  bForceExec || (pCoexDm->preAmpduTimeType != pCoexDm->curAmpduTimeType)
 ) {
  switch (pCoexDm->curAmpduTimeType) {
  case 0:
   pBtCoexist->fBtcWrite1Byte(
    pBtCoexist, 0x456, pCoexDm->backupAmpduMaxTime
   );
   break;
  case 1:
   pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x456, 0x38);
   break;
  default:
   break;
  }
 }

 pCoexDm->preAmpduTimeType = pCoexDm->curAmpduTimeType;
}
