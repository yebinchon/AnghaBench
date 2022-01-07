
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bValid; } ;
struct tx_ts_record {TYPE_1__ TxPendingBARecord; TYPE_1__ TxAdmittedBARecord; } ;
struct ts_common_info {int Addr; } ;
struct rx_ts_record {TYPE_1__ RxAdmittedBARecord; } ;
struct rtllib_device {int dummy; } ;
typedef enum tr_select { ____Placeholder_tr_select } tr_select ;


 int DELBA_REASON_END_BA ;
 int RX_DIR ;
 scalar_t__ RxTsDeleteBA (struct rtllib_device*,struct rx_ts_record*) ;
 int TX_DIR ;
 scalar_t__ TxTsDeleteBA (struct rtllib_device*,struct tx_ts_record*) ;
 int rtllib_send_DELBA (struct rtllib_device*,int ,TYPE_1__*,int,int ) ;

void TsInitDelBA(struct rtllib_device *ieee,
   struct ts_common_info *pTsCommonInfo,
   enum tr_select TxRxSelect)
{
 if (TxRxSelect == TX_DIR) {
  struct tx_ts_record *pTxTs =
    (struct tx_ts_record *)pTsCommonInfo;

  if (TxTsDeleteBA(ieee, pTxTs))
   rtllib_send_DELBA(ieee, pTsCommonInfo->Addr,
       (pTxTs->TxAdmittedBARecord.bValid) ?
      (&pTxTs->TxAdmittedBARecord) :
     (&pTxTs->TxPendingBARecord),
      TxRxSelect, DELBA_REASON_END_BA);
 } else if (TxRxSelect == RX_DIR) {
  struct rx_ts_record *pRxTs =
     (struct rx_ts_record *)pTsCommonInfo;
  if (RxTsDeleteBA(ieee, pRxTs))
   rtllib_send_DELBA(ieee, pTsCommonInfo->Addr,
       &pRxTs->RxAdmittedBARecord,
       TxRxSelect, DELBA_REASON_END_BA);
 }
}
