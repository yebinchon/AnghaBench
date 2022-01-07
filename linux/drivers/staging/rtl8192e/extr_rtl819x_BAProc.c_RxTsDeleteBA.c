
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ba_record {scalar_t__ bValid; } ;
struct rx_ts_record {struct ba_record RxAdmittedBARecord; } ;
struct rtllib_device {int dummy; } ;


 int DeActivateBAEntry (struct rtllib_device*,struct ba_record*) ;

__attribute__((used)) static u8 RxTsDeleteBA(struct rtllib_device *ieee, struct rx_ts_record *pRxTs)
{
 struct ba_record *pBa = &pRxTs->RxAdmittedBARecord;
 u8 bSendDELBA = 0;

 if (pBa->bValid) {
  DeActivateBAEntry(ieee, pBa);
  bSendDELBA = 1;
 }

 return bSendDELBA;
}
