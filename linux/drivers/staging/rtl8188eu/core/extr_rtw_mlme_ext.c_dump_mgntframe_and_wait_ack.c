
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xmit_priv {int ack_tx; int ack_tx_mutex; } ;
struct xmit_frame {int ack_report; } ;
struct adapter {scalar_t__ bDriverStopped; scalar_t__ bSurpriseRemoved; struct xmit_priv xmitpriv; } ;
typedef int s32 ;


 int _FAIL ;
 scalar_t__ _SUCCESS ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int rtw_ack_tx_wait (struct xmit_priv*,int) ;
 scalar_t__ rtw_hal_mgnt_xmit (struct adapter*,struct xmit_frame*) ;

__attribute__((used)) static s32 dump_mgntframe_and_wait_ack(struct adapter *padapter,
           struct xmit_frame *pmgntframe)
{
 s32 ret = _FAIL;
 u32 timeout_ms = 500;
 struct xmit_priv *pxmitpriv = &padapter->xmitpriv;

 if (padapter->bSurpriseRemoved || padapter->bDriverStopped)
  return -1;

 if (mutex_lock_interruptible(&pxmitpriv->ack_tx_mutex))
  return _FAIL;
 pxmitpriv->ack_tx = 1;

 pmgntframe->ack_report = 1;
 if (rtw_hal_mgnt_xmit(padapter, pmgntframe) == _SUCCESS)
  ret = rtw_ack_tx_wait(pxmitpriv, timeout_ms);

 pxmitpriv->ack_tx = 0;
 mutex_unlock(&pxmitpriv->ack_tx_mutex);

 return ret;
}
