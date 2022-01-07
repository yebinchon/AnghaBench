
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct txrpt_ccx_88e {scalar_t__ pkt_ok; scalar_t__ int_ccx; } ;
struct adapter {int xmitpriv; } ;


 int RTW_SCTX_DONE_CCX_PKT_FAIL ;
 int RTW_SCTX_DONE_SUCCESS ;
 int rtw_ack_tx_done (int *,int ) ;

void handle_txrpt_ccx_88e(struct adapter *adapter, u8 *buf)
{
 struct txrpt_ccx_88e *txrpt_ccx = (struct txrpt_ccx_88e *)buf;

 if (txrpt_ccx->int_ccx) {
  if (txrpt_ccx->pkt_ok)
   rtw_ack_tx_done(&adapter->xmitpriv,
     RTW_SCTX_DONE_SUCCESS);
  else
   rtw_ack_tx_done(&adapter->xmitpriv,
     RTW_SCTX_DONE_CCX_PKT_FAIL);
 }
}
