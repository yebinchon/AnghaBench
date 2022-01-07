
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ba_record {scalar_t__ valid; } ;
struct rx_ts_record {struct ba_record rx_admitted_ba_record; } ;
struct ieee80211_device {int dummy; } ;


 int DeActivateBAEntry (struct ieee80211_device*,struct ba_record*) ;

__attribute__((used)) static u8 RxTsDeleteBA(struct ieee80211_device *ieee, struct rx_ts_record *pRxTs)
{
 struct ba_record *pBa = &pRxTs->rx_admitted_ba_record;
 u8 bSendDELBA = 0;

 if (pBa->valid) {
  DeActivateBAEntry(ieee, pBa);
  bSendDELBA = 1;
 }

 return bSendDELBA;
}
