
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_priv {scalar_t__ dbg_rx_fifo_last_overflow; scalar_t__ dbg_rx_fifo_curr_overflow; scalar_t__ dbg_rx_fifo_diff_overflow; } ;
struct dvobj_priv {struct debug_priv drv_dbg; } ;
struct adapter {struct dvobj_priv* dvobj; } ;


 scalar_t__ REG_RXERR_RPT ;
 scalar_t__ rtw_read16 (struct adapter*,scalar_t__) ;
 int rtw_read8 (struct adapter*,scalar_t__) ;
 int rtw_write8 (struct adapter*,scalar_t__,int) ;

void rtw_hal_check_rxfifo_full(struct adapter *adapter)
{
 struct dvobj_priv *psdpriv = adapter->dvobj;
 struct debug_priv *pdbgpriv = &psdpriv->drv_dbg;
 int save_cnt = 0;



 rtw_write8(adapter, REG_RXERR_RPT+3, rtw_read8(adapter, REG_RXERR_RPT+3)|0xf0);
 save_cnt = 1;


 if (save_cnt) {

  pdbgpriv->dbg_rx_fifo_last_overflow = pdbgpriv->dbg_rx_fifo_curr_overflow;
  pdbgpriv->dbg_rx_fifo_curr_overflow = rtw_read16(adapter, REG_RXERR_RPT);
  pdbgpriv->dbg_rx_fifo_diff_overflow = pdbgpriv->dbg_rx_fifo_curr_overflow-pdbgpriv->dbg_rx_fifo_last_overflow;
 }
}
