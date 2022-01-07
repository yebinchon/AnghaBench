
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xmit_priv {int ack_tx_mutex; int pallocated_xmit_extbuf; scalar_t__ pxmit_extbuf; int pallocated_xmitbuf; int pallocated_frame_buf; scalar_t__ pxmit_frame_buf; scalar_t__ pxmitbuf; struct adapter* adapter; } ;
struct xmit_frame {int dummy; } ;
struct xmit_buf {int dummy; } ;
struct adapter {int dummy; } ;


 int NR_XMITBUFF ;
 int NR_XMITFRAME ;
 int NR_XMIT_EXTBUFF ;
 int mutex_destroy (int *) ;
 int rtw_free_hwxmits (struct adapter*) ;
 int rtw_os_xmit_complete (struct adapter*,struct xmit_frame*) ;
 int rtw_os_xmit_resource_free (struct xmit_buf*) ;
 int vfree (int ) ;

void _rtw_free_xmit_priv(struct xmit_priv *pxmitpriv)
{
 int i;
 struct adapter *padapter = pxmitpriv->adapter;
 struct xmit_frame *pxmitframe = (struct xmit_frame *)pxmitpriv->pxmit_frame_buf;
 struct xmit_buf *pxmitbuf = (struct xmit_buf *)pxmitpriv->pxmitbuf;
 u32 num_xmit_extbuf = NR_XMIT_EXTBUFF;

 if (!pxmitpriv->pxmit_frame_buf)
  return;

 for (i = 0; i < NR_XMITFRAME; i++) {
  rtw_os_xmit_complete(padapter, pxmitframe);

  pxmitframe++;
 }

 for (i = 0; i < NR_XMITBUFF; i++) {
  rtw_os_xmit_resource_free(pxmitbuf);
  pxmitbuf++;
 }

 vfree(pxmitpriv->pallocated_frame_buf);
 vfree(pxmitpriv->pallocated_xmitbuf);


 pxmitbuf = (struct xmit_buf *)pxmitpriv->pxmit_extbuf;
 for (i = 0; i < num_xmit_extbuf; i++) {
  rtw_os_xmit_resource_free(pxmitbuf);
  pxmitbuf++;
 }

 vfree(pxmitpriv->pallocated_xmit_extbuf);

 rtw_free_hwxmits(padapter);

 mutex_destroy(&pxmitpriv->ack_tx_mutex);
}
