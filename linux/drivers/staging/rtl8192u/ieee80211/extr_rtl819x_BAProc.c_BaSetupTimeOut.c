
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int valid; } ;
struct tx_ts_record {int add_ba_req_in_progress; int add_ba_req_delayed; TYPE_1__ tx_pending_ba_record; } ;
struct timer_list {int dummy; } ;
struct TYPE_4__ {int timer; } ;


 struct tx_ts_record* from_timer (int ,struct timer_list*,int ) ;
 struct tx_ts_record* pTxTs ;
 TYPE_2__ tx_pending_ba_record ;

void BaSetupTimeOut(struct timer_list *t)
{
 struct tx_ts_record *pTxTs = from_timer(pTxTs, t, tx_pending_ba_record.timer);

 pTxTs->add_ba_req_in_progress = 0;
 pTxTs->add_ba_req_delayed = 1;
 pTxTs->tx_pending_ba_record.valid = 0;
}
