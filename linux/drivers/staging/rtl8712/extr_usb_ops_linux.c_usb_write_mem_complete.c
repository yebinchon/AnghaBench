
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int status; scalar_t__ context; } ;
struct intf_hdl {scalar_t__ adapter; struct intf_priv* pintfpriv; } ;
struct io_queue {struct intf_hdl intf; } ;
struct intf_priv {int io_retevt_comp; } ;
struct _adapter {int driver_stopped; int surprise_removed; } ;


 int ESHUTDOWN ;
 int complete (int *) ;

__attribute__((used)) static void usb_write_mem_complete(struct urb *purb)
{
 struct io_queue *pio_q = (struct io_queue *)purb->context;
 struct intf_hdl *pintf = &(pio_q->intf);
 struct intf_priv *pintfpriv = pintf->pintfpriv;
 struct _adapter *padapter = (struct _adapter *)pintf->adapter;

 if (purb->status != 0) {
  if (purb->status == (-ESHUTDOWN))
   padapter->driver_stopped = 1;
  else
   padapter->surprise_removed = 1;
 }
 complete(&pintfpriv->io_retevt_comp);
}
