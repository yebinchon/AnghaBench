
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_frame {int buf_addr; int * pxmit_urb; struct xmit_buf* pxmitbuf; } ;
struct xmit_buf {struct xmit_frame* priv_data; int pbuf; int * pxmit_urb; } ;



void xmitframe_xmitbuf_attach(struct xmit_frame *pxmitframe,
   struct xmit_buf *pxmitbuf)
{

 pxmitframe->pxmitbuf = pxmitbuf;

 pxmitframe->pxmit_urb[0] = pxmitbuf->pxmit_urb[0];

 pxmitframe->buf_addr = pxmitbuf->pbuf;

 pxmitbuf->priv_data = pxmitframe;
}
