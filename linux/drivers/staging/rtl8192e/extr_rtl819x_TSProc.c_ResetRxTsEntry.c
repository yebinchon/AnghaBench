
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_ts_record {int RxIndicateSeq; int RxTimeoutIndicateSeq; int RxAdmittedBARecord; int TsCommonInfo; } ;


 int ResetBaEntry (int *) ;
 int ResetTsCommonInfo (int *) ;

__attribute__((used)) static void ResetRxTsEntry(struct rx_ts_record *pTS)
{
 ResetTsCommonInfo(&pTS->TsCommonInfo);
 pTS->RxIndicateSeq = 0xffff;
 pTS->RxTimeoutIndicateSeq = 0xffff;
 ResetBaEntry(&pTS->RxAdmittedBARecord);
}
