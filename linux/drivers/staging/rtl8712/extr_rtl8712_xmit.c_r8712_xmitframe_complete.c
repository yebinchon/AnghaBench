
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct xmit_priv {int hwxmit_entry; struct hw_xmit* hwxmits; } ;
struct TYPE_2__ {int priority; } ;
struct xmit_frame {scalar_t__ frame_tag; int pkt; TYPE_1__ attrib; } ;
struct xmit_buf {int aggr_nr; } ;
struct hw_xmit {int dummy; } ;
struct _adapter {int dummy; } ;
typedef int sint ;


 int AGGR_NR_HIGH_BOUND ;
 scalar_t__ DATA_FRAMETAG ;
 int _SUCCESS ;
 struct xmit_frame* dequeue_xframe_ex (struct xmit_priv*,struct hw_xmit*,int ) ;
 int dump_xframe (struct _adapter*,struct xmit_frame*) ;
 struct xmit_buf* r8712_alloc_xmitbuf (struct xmit_priv*) ;
 int r8712_dump_aggr_xframe (struct xmit_buf*,struct xmit_frame*) ;
 int r8712_free_xmitbuf (struct xmit_priv*,struct xmit_buf*) ;
 int r8712_free_xmitframe_ex (struct xmit_priv*,struct xmit_frame*) ;
 int r8712_xmit_complete (struct _adapter*,struct xmit_frame*) ;
 int r8712_xmitframe_aggr_1st (struct xmit_buf*,struct xmit_frame*) ;
 int r8712_xmitframe_aggr_next (struct xmit_buf*,struct xmit_frame*) ;
 int r8712_xmitframe_coalesce (struct _adapter*,int ,struct xmit_frame*) ;
 int xmitframe_xmitbuf_attach (struct xmit_frame*,struct xmit_buf*) ;

int r8712_xmitframe_complete(struct _adapter *padapter,
        struct xmit_priv *pxmitpriv,
        struct xmit_buf *pxmitbuf)
{
 struct hw_xmit *phwxmits;
 sint hwentry;
 struct xmit_frame *pxmitframe = ((void*)0);



 int res = _SUCCESS, xcnt = 0;


 phwxmits = pxmitpriv->hwxmits;
 hwentry = pxmitpriv->hwxmit_entry;
 if (!pxmitbuf) {
  pxmitbuf = r8712_alloc_xmitbuf(pxmitpriv);
  if (!pxmitbuf)
   return 0;



 }

 pxmitframe = dequeue_xframe_ex(pxmitpriv, phwxmits, hwentry);

 if (pxmitframe) {
  xmitframe_xmitbuf_attach(pxmitframe, pxmitbuf);
  if (pxmitframe->frame_tag == DATA_FRAMETAG) {
   if (pxmitframe->attrib.priority <= 15)
    res = r8712_xmitframe_coalesce(padapter,
     pxmitframe->pkt, pxmitframe);



   r8712_xmit_complete(padapter, pxmitframe);
  }
  if (res == _SUCCESS)
   dump_xframe(padapter, pxmitframe);
  else
   r8712_free_xmitframe_ex(pxmitpriv, pxmitframe);
  xcnt++;


 } else {
  r8712_free_xmitbuf(pxmitpriv, pxmitbuf);
  return 0;
 }
 return 1;
}
