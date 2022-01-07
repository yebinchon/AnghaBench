
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xmit_frame {int dummy; } ;
struct TYPE_2__ {int core_tx_enqueue; } ;
struct adapter {TYPE_1__ tx_logs; } ;
typedef scalar_t__ s32 ;


 int DBG_COUNTER (int ) ;
 int RT_TRACE (int ,int ,char*) ;
 scalar_t__ _FAIL ;
 scalar_t__ _SUCCESS ;
 int _drv_err_ ;
 int _module_rtl871x_xmit_c_ ;
 scalar_t__ rtw_xmit_classifier (struct adapter*,struct xmit_frame*) ;

s32 rtw_xmitframe_enqueue(struct adapter *padapter, struct xmit_frame *pxmitframe)
{
 DBG_COUNTER(padapter->tx_logs.core_tx_enqueue);
 if (rtw_xmit_classifier(padapter, pxmitframe) == _FAIL) {
  RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
    ("rtw_xmitframe_enqueue: drop xmit pkt for classifier fail\n"));

  return _FAIL;
 }

 return _SUCCESS;
}
