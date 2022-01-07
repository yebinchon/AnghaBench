
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_ts_record {int bAddBaReqInProgress; int bAddBaReqDelayed; int bUsingBa; int bDisable_AddBa; int TxPendingBARecord; int TxAdmittedBARecord; scalar_t__ TxCurSeq; int TsCommonInfo; } ;


 int ResetBaEntry (int *) ;
 int ResetTsCommonInfo (int *) ;

__attribute__((used)) static void ResetTxTsEntry(struct tx_ts_record *pTS)
{
 ResetTsCommonInfo(&pTS->TsCommonInfo);
 pTS->TxCurSeq = 0;
 pTS->bAddBaReqInProgress = 0;
 pTS->bAddBaReqDelayed = 0;
 pTS->bUsingBa = 0;
 pTS->bDisable_AddBa = 0;
 ResetBaEntry(&pTS->TxAdmittedBARecord);
 ResetBaEntry(&pTS->TxPendingBARecord);
}
