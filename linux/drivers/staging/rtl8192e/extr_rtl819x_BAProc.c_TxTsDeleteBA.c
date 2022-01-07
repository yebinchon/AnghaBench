
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ba_record {scalar_t__ bValid; } ;
struct tx_ts_record {struct ba_record TxPendingBARecord; struct ba_record TxAdmittedBARecord; } ;
struct rtllib_device {int dummy; } ;


 int DeActivateBAEntry (struct rtllib_device*,struct ba_record*) ;

__attribute__((used)) static u8 TxTsDeleteBA(struct rtllib_device *ieee, struct tx_ts_record *pTxTs)
{
 struct ba_record *pAdmittedBa = &pTxTs->TxAdmittedBARecord;
 struct ba_record *pPendingBa = &pTxTs->TxPendingBARecord;
 u8 bSendDELBA = 0;

 if (pPendingBa->bValid) {
  DeActivateBAEntry(ieee, pPendingBa);
  bSendDELBA = 1;
 }

 if (pAdmittedBa->bValid) {
  DeActivateBAEntry(ieee, pAdmittedBa);
  bSendDELBA = 1;
 }
 return bSendDELBA;
}
