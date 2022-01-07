
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_ts_record {int bAddBaReqInProgress; int TsAddBaTimer; scalar_t__ bAddBaReqDelayed; } ;
struct rtllib_device {int dev; } ;


 int TS_ADDBA_DELAY ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int netdev_dbg (int ,char*) ;

void TsStartAddBaProcess(struct rtllib_device *ieee, struct tx_ts_record *pTxTS)
{
 if (pTxTS->bAddBaReqInProgress == 0) {
  pTxTS->bAddBaReqInProgress = 1;

  if (pTxTS->bAddBaReqDelayed) {
   netdev_dbg(ieee->dev, "Start ADDBA after 60 sec!!\n");
   mod_timer(&pTxTS->TsAddBaTimer, jiffies +
      msecs_to_jiffies(TS_ADDBA_DELAY));
  } else {
   netdev_dbg(ieee->dev, "Immediately Start ADDBA\n");
   mod_timer(&pTxTS->TsAddBaTimer, jiffies+10);
  }
 } else
  netdev_dbg(ieee->dev, "BA timer is already added\n");
}
