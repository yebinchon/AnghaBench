
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int xmitpriv; } ;


 int GET_8723B_C2H_TX_RPT_LIFE_TIME_OVER (int *) ;
 int GET_8723B_C2H_TX_RPT_RETRY_OVER (int *) ;
 int RTW_SCTX_DONE_CCX_PKT_FAIL ;
 int RTW_SCTX_DONE_SUCCESS ;
 int rtw_ack_tx_done (int *,int ) ;

void CCX_FwC2HTxRpt_8723b(struct adapter *padapter, u8 *pdata, u8 len)
{
 u8 seq_no;







 seq_no = *(pdata+6);

 if (LE_BITS_TO_1BYTE((pdata + 0), 7, 1) | LE_BITS_TO_1BYTE((pdata + 0), 6, 1)) {
  rtw_ack_tx_done(&padapter->xmitpriv, RTW_SCTX_DONE_CCX_PKT_FAIL);
 }






 else
  rtw_ack_tx_done(&padapter->xmitpriv, RTW_SCTX_DONE_SUCCESS);
}
