
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ valid; } ;
struct tx_ts_record {TYPE_1__ tx_pending_ba_record; TYPE_1__ tx_admitted_ba_record; } ;
struct ts_common_info {int addr; } ;
struct rx_ts_record {TYPE_1__ rx_admitted_ba_record; } ;
struct ieee80211_device {int dummy; } ;
typedef enum tr_select { ____Placeholder_tr_select } tr_select ;


 int DELBA_REASON_END_BA ;
 int RX_DIR ;
 scalar_t__ RxTsDeleteBA (struct ieee80211_device*,struct rx_ts_record*) ;
 int TX_DIR ;
 scalar_t__ TxTsDeleteBA (struct ieee80211_device*,struct tx_ts_record*) ;
 int ieee80211_send_DELBA (struct ieee80211_device*,int ,TYPE_1__*,int,int ) ;

void
TsInitDelBA(struct ieee80211_device *ieee, struct ts_common_info *pTsCommonInfo, enum tr_select TxRxSelect)
{
 if (TxRxSelect == TX_DIR) {
  struct tx_ts_record *pTxTs = (struct tx_ts_record *)pTsCommonInfo;

  if (TxTsDeleteBA(ieee, pTxTs))
   ieee80211_send_DELBA(
    ieee,
    pTsCommonInfo->addr,
    (pTxTs->tx_admitted_ba_record.valid) ? (&pTxTs->tx_admitted_ba_record) : (&pTxTs->tx_pending_ba_record),
    TxRxSelect,
    DELBA_REASON_END_BA);
 } else if (TxRxSelect == RX_DIR) {
  struct rx_ts_record *pRxTs = (struct rx_ts_record *)pTsCommonInfo;
  if (RxTsDeleteBA(ieee, pRxTs))
   ieee80211_send_DELBA(
    ieee,
    pTsCommonInfo->addr,
    &pRxTs->rx_admitted_ba_record,
    TxRxSelect,
    DELBA_REASON_END_BA);
 }
}
