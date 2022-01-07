
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_ts_record {int add_ba_req_in_progress; int add_ba_req_delayed; int using_ba; int tx_pending_ba_record; int tx_admitted_ba_record; scalar_t__ tx_cur_seq; int ts_common_info; } ;


 int ResetBaEntry (int *) ;
 int ResetTsCommonInfo (int *) ;

__attribute__((used)) static void ResetTxTsEntry(struct tx_ts_record *pTS)
{
 ResetTsCommonInfo(&pTS->ts_common_info);
 pTS->tx_cur_seq = 0;
 pTS->add_ba_req_in_progress = 0;
 pTS->add_ba_req_delayed = 0;
 pTS->using_ba = 0;
 ResetBaEntry(&pTS->tx_admitted_ba_record);
 ResetBaEntry(&pTS->tx_pending_ba_record);
}
