
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bValid; } ;
struct tx_ts_record {int bAddBaReqInProgress; int bAddBaReqDelayed; TYPE_1__ TxPendingBARecord; } ;
struct timer_list {int dummy; } ;
struct TYPE_4__ {int Timer; } ;


 TYPE_2__ TxPendingBARecord ;
 struct tx_ts_record* from_timer (int ,struct timer_list*,int ) ;
 struct tx_ts_record* pTxTs ;

void BaSetupTimeOut(struct timer_list *t)
{
 struct tx_ts_record *pTxTs = from_timer(pTxTs, t,
           TxPendingBARecord.Timer);

 pTxTs->bAddBaReqInProgress = 0;
 pTxTs->bAddBaReqDelayed = 1;
 pTxTs->TxPendingBARecord.bValid = 0;
}
