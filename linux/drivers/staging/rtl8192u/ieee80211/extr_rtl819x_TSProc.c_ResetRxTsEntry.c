
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_ts_record {int rx_indicate_seq; int rx_timeout_indicate_seq; int rx_admitted_ba_record; int ts_common_info; } ;


 int ResetBaEntry (int *) ;
 int ResetTsCommonInfo (int *) ;

__attribute__((used)) static void ResetRxTsEntry(struct rx_ts_record *pTS)
{
 ResetTsCommonInfo(&pTS->ts_common_info);
 pTS->rx_indicate_seq = 0xffff;
 pTS->rx_timeout_indicate_seq = 0xffff;
 ResetBaEntry(&pTS->rx_admitted_ba_record);
}
