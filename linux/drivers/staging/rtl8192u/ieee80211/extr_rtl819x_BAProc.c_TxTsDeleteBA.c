
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ba_record {scalar_t__ valid; } ;
struct tx_ts_record {struct ba_record tx_pending_ba_record; struct ba_record tx_admitted_ba_record; } ;
struct ieee80211_device {int dummy; } ;


 int DeActivateBAEntry (struct ieee80211_device*,struct ba_record*) ;

__attribute__((used)) static u8 TxTsDeleteBA(struct ieee80211_device *ieee, struct tx_ts_record *pTxTs)
{
 struct ba_record *pAdmittedBa = &pTxTs->tx_admitted_ba_record;
 struct ba_record *pPendingBa = &pTxTs->tx_pending_ba_record;
 u8 bSendDELBA = 0;


 if (pPendingBa->valid) {
  DeActivateBAEntry(ieee, pPendingBa);
  bSendDELBA = 1;
 }


 if (pAdmittedBa->valid) {
  DeActivateBAEntry(ieee, pAdmittedBa);
  bSendDELBA = 1;
 }

 return bSendDELBA;
}
