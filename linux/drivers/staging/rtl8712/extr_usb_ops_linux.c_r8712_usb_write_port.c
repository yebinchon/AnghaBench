
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct xmit_priv {int free_xmitbuf_cnt; int lock; int beq_cnt; int voq_cnt; int viq_cnt; int bkq_cnt; int txirp_cnt; } ;
struct pkt_attrib {int priority; } ;
struct xmit_frame {int* bpending; int mem_addr; struct urb** pxmit_urb; scalar_t__* sz; struct pkt_attrib attrib; } ;
struct usb_device {int dummy; } ;
struct urb {int transfer_flags; } ;
struct intf_hdl {scalar_t__ adapter; } ;
struct dvobj_priv {scalar_t__ ishighspeed; struct usb_device* pusbdev; } ;
struct TYPE_2__ {scalar_t__ pnp_bstop_trx; } ;
struct _adapter {TYPE_1__ pwrctrlpriv; scalar_t__ surprise_removed; scalar_t__ driver_stopped; struct xmit_priv xmitpriv; struct dvobj_priv dvobjpriv; } ;


 int GFP_ATOMIC ;
 int NR_XMITBUFF ;
 int URB_NO_INTERRUPT ;
 int _FAIL ;
 int _SUCCESS ;
 unsigned int ffaddr2pipehdl (struct dvobj_priv*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_fill_bulk_urb (struct urb*,struct usb_device*,unsigned int,int ,int,int ,struct xmit_frame*) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_write_port_complete ;

u32 r8712_usb_write_port(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *wmem)
{
 unsigned long irqL;
 int i, status;
 unsigned int pipe;
 u32 ret, bwritezero;
 struct urb *purb = ((void*)0);
 struct _adapter *padapter = (struct _adapter *)pintfhdl->adapter;
 struct dvobj_priv *pdvobj = &padapter->dvobjpriv;
 struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 struct xmit_frame *pxmitframe = (struct xmit_frame *)wmem;
 struct usb_device *pusbd = pdvobj->pusbdev;
 struct pkt_attrib *pattrib = &pxmitframe->attrib;

 if ((padapter->driver_stopped) || (padapter->surprise_removed) ||
     (padapter->pwrctrlpriv.pnp_bstop_trx))
  return _FAIL;
 for (i = 0; i < 8; i++) {
  if (!pxmitframe->bpending[i]) {
   spin_lock_irqsave(&pxmitpriv->lock, irqL);
   pxmitpriv->txirp_cnt++;
   pxmitframe->bpending[i] = 1;
   switch (pattrib->priority) {
   case 1:
   case 2:
    pxmitpriv->bkq_cnt++;
    break;
   case 4:
   case 5:
    pxmitpriv->viq_cnt++;
    break;
   case 6:
   case 7:
    pxmitpriv->voq_cnt++;
    break;
   case 0:
   case 3:
   default:
    pxmitpriv->beq_cnt++;
    break;
   }
   spin_unlock_irqrestore(&pxmitpriv->lock, irqL);
   pxmitframe->sz[i] = (u16)cnt;
   purb = pxmitframe->pxmit_urb[i];
   break;
  }
 }
 bwritezero = 0;
 if (pdvobj->ishighspeed) {
  if (cnt > 0 && cnt % 512 == 0)
   bwritezero = 1;
 } else {
  if (cnt > 0 && cnt % 64 == 0)
   bwritezero = 1;
 }

 pipe = ffaddr2pipehdl(pdvobj, addr);
 if (pxmitpriv->free_xmitbuf_cnt % NR_XMITBUFF == 0)
  purb->transfer_flags &= (~URB_NO_INTERRUPT);
 else
  purb->transfer_flags |= URB_NO_INTERRUPT;
 if (bwritezero)
  cnt += 8;
 usb_fill_bulk_urb(purb, pusbd, pipe,
     pxmitframe->mem_addr,
     cnt, usb_write_port_complete,
     pxmitframe);
 status = usb_submit_urb(purb, GFP_ATOMIC);
 if (!status)
  ret = _SUCCESS;
 else
  ret = _FAIL;
 return ret;
}
