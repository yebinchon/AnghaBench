
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_priv {int pallocated_xmitbuf; int pallocated_frame_buf; int * pxmit_frame_buf; scalar_t__ pxmitbuf; struct _adapter* adapter; } ;
struct xmit_frame {int dummy; } ;
struct xmit_buf {int pallocated_buf; } ;
struct _adapter {int dummy; } ;


 int NR_XMITBUFF ;
 int NR_XMITFRAME ;
 int free_hwxmits (struct _adapter*) ;
 int kfree (int ) ;
 int r8712_xmit_complete (struct _adapter*,struct xmit_frame*) ;
 int r8712_xmit_resource_free (struct _adapter*,struct xmit_buf*) ;

void _free_xmit_priv(struct xmit_priv *pxmitpriv)
{
 int i;
 struct _adapter *padapter = pxmitpriv->adapter;
 struct xmit_frame *pxmitframe = (struct xmit_frame *)
     pxmitpriv->pxmit_frame_buf;
 struct xmit_buf *pxmitbuf = (struct xmit_buf *)pxmitpriv->pxmitbuf;

 if (pxmitpriv->pxmit_frame_buf == ((void*)0))
  return;
 for (i = 0; i < NR_XMITFRAME; i++) {
  r8712_xmit_complete(padapter, pxmitframe);
  pxmitframe++;
 }
 for (i = 0; i < NR_XMITBUFF; i++) {
  r8712_xmit_resource_free(padapter, pxmitbuf);
  kfree(pxmitbuf->pallocated_buf);
  pxmitbuf++;
 }
 kfree(pxmitpriv->pallocated_frame_buf);
 kfree(pxmitpriv->pallocated_xmitbuf);
 free_hwxmits(padapter);
}
