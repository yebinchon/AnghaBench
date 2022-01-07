
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_priv {int SdioXmitStart; int xmit_tasklet; int tx_drop; } ;
struct xmit_frame {int dummy; } ;
struct adapter {struct xmit_priv xmitpriv; } ;
typedef scalar_t__ s32 ;


 scalar_t__ _SUCCESS ;
 int complete (int *) ;
 int rtw_free_xmitframe (struct xmit_priv*,struct xmit_frame*) ;
 scalar_t__ rtw_xmitframe_enqueue (struct adapter*,struct xmit_frame*) ;
 int tasklet_hi_schedule (int *) ;

s32 rtl8723bs_hal_xmitframe_enqueue(
 struct adapter *padapter, struct xmit_frame *pxmitframe
)
{
 struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 s32 err;

 err = rtw_xmitframe_enqueue(padapter, pxmitframe);
 if (err != _SUCCESS) {
  rtw_free_xmitframe(pxmitpriv, pxmitframe);

  pxmitpriv->tx_drop++;
 } else {



  complete(&pxmitpriv->SdioXmitStart);

 }

 return err;

}
