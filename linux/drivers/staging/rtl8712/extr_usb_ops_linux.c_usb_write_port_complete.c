
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_priv {int xmit_tasklet; int txirp_cnt; int beq_cnt; int voq_cnt; int viq_cnt; int bkq_cnt; } ;
struct pkt_attrib {int priority; } ;
struct xmit_frame {int* bpending; struct urb** pxmit_urb; struct pkt_attrib attrib; struct _adapter* padapter; struct xmit_buf* pxmitbuf; } ;
struct xmit_buf {int dummy; } ;
struct urb {int status; scalar_t__ context; } ;
struct _adapter {int pnetdev; scalar_t__ surprise_removed; struct xmit_priv xmitpriv; } ;


 int netdev_warn (int ,char*,int) ;
 int r8712_free_xmitbuf (struct xmit_priv*,struct xmit_buf*) ;
 int r8712_free_xmitframe_ex (struct xmit_priv*,struct xmit_frame*) ;
 int tasklet_hi_schedule (int *) ;

__attribute__((used)) static void usb_write_port_complete(struct urb *purb)
{
 int i;
 struct xmit_frame *pxmitframe = (struct xmit_frame *)purb->context;
 struct xmit_buf *pxmitbuf = pxmitframe->pxmitbuf;
 struct _adapter *padapter = pxmitframe->padapter;
 struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 struct pkt_attrib *pattrib = &pxmitframe->attrib;

 switch (pattrib->priority) {
 case 1:
 case 2:
  pxmitpriv->bkq_cnt--;
  break;
 case 4:
 case 5:
  pxmitpriv->viq_cnt--;
  break;
 case 6:
 case 7:
  pxmitpriv->voq_cnt--;
  break;
 case 0:
 case 3:
 default:
  pxmitpriv->beq_cnt--;
  break;
 }
 pxmitpriv->txirp_cnt--;
 for (i = 0; i < 8; i++) {
  if (purb == pxmitframe->pxmit_urb[i]) {
   pxmitframe->bpending[i] = 0;
   break;
  }
 }
 if (padapter->surprise_removed)
  return;
 switch (purb->status) {
 case 0:
  break;
 default:
  netdev_warn(padapter->pnetdev,
    "r8712u: pipe error: (%d)\n", purb->status);
  break;
 }

 r8712_free_xmitframe_ex(pxmitpriv, pxmitframe);
 r8712_free_xmitbuf(pxmitpriv, pxmitbuf);
 tasklet_hi_schedule(&pxmitpriv->xmit_tasklet);
}
