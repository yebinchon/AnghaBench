
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_priv {int lock; } ;
struct pkt_attrib {int dummy; } ;
struct xmit_frame {struct pkt_attrib attrib; } ;
struct xmit_buf {int dummy; } ;
struct _adapter {struct xmit_priv xmitpriv; } ;


 struct xmit_buf* r8712_alloc_xmitbuf (struct xmit_priv*) ;
 int r8712_do_queue_select (struct _adapter*,struct pkt_attrib*) ;
 scalar_t__ r8712_txframes_sta_ac_pending (struct _adapter*,struct pkt_attrib*) ;
 int r8712_xmit_direct (struct _adapter*,struct xmit_frame*) ;
 int r8712_xmit_enqueue (struct _adapter*,struct xmit_frame*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int xmitframe_xmitbuf_attach (struct xmit_frame*,struct xmit_buf*) ;

int r8712_pre_xmit(struct _adapter *padapter, struct xmit_frame *pxmitframe)
{
 unsigned long irqL;
 int ret;
 struct xmit_buf *pxmitbuf = ((void*)0);
 struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 struct pkt_attrib *pattrib = &pxmitframe->attrib;

 r8712_do_queue_select(padapter, pattrib);
 spin_lock_irqsave(&pxmitpriv->lock, irqL);
 if (r8712_txframes_sta_ac_pending(padapter, pattrib) > 0) {
  ret = 0;
  r8712_xmit_enqueue(padapter, pxmitframe);
  spin_unlock_irqrestore(&pxmitpriv->lock, irqL);
  return ret;
 }
 pxmitbuf = r8712_alloc_xmitbuf(pxmitpriv);
 if (pxmitbuf == ((void*)0)) {
  ret = 0;
  r8712_xmit_enqueue(padapter, pxmitframe);
  spin_unlock_irqrestore(&pxmitpriv->lock, irqL);
 } else {
  spin_unlock_irqrestore(&pxmitpriv->lock, irqL);
  ret = 1;
  xmitframe_xmitbuf_attach(pxmitframe, pxmitbuf);
  r8712_xmit_direct(padapter, pxmitframe);
 }
 return ret;
}
