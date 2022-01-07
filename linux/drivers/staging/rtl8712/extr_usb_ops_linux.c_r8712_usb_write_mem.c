
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct usb_device {int dummy; } ;
struct urb {int dummy; } ;
struct io_queue {int dummy; } ;
struct intf_priv {int io_retevt_comp; struct urb* piorw_urb; scalar_t__ intf_dev; } ;
struct intf_hdl {struct intf_priv* pintfpriv; scalar_t__ adapter; } ;
struct dvobj_priv {struct usb_device* pusbdev; } ;
struct TYPE_2__ {scalar_t__ pnp_bstop_trx; } ;
struct _adapter {TYPE_1__ pwrctrlpriv; scalar_t__ surprise_removed; scalar_t__ driver_stopped; struct io_queue* pio_queue; } ;


 int GFP_ATOMIC ;
 unsigned int ffaddr2pipehdl (struct dvobj_priv*,int ) ;
 int usb_fill_bulk_urb (struct urb*,struct usb_device*,unsigned int,int *,int ,int ,struct io_queue*) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_write_mem_complete ;
 int wait_for_completion_interruptible (int *) ;

void r8712_usb_write_mem(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *wmem)
{
 unsigned int pipe;
 struct _adapter *padapter = (struct _adapter *)pintfhdl->adapter;
 struct intf_priv *pintfpriv = pintfhdl->pintfpriv;
 struct io_queue *pio_queue = padapter->pio_queue;
 struct dvobj_priv *pdvobj = (struct dvobj_priv *)pintfpriv->intf_dev;
 struct usb_device *pusbd = pdvobj->pusbdev;
 struct urb *piorw_urb = pintfpriv->piorw_urb;

 if ((padapter->driver_stopped) || (padapter->surprise_removed) ||
     (padapter->pwrctrlpriv.pnp_bstop_trx))
  return;

 pipe = ffaddr2pipehdl(pdvobj, addr);
 if (pipe == 0)
  return;
 usb_fill_bulk_urb(piorw_urb, pusbd, pipe,
     wmem, cnt, usb_write_mem_complete,
     pio_queue);
 usb_submit_urb(piorw_urb, GFP_ATOMIC);
 wait_for_completion_interruptible(&pintfpriv->io_retevt_comp);
}
