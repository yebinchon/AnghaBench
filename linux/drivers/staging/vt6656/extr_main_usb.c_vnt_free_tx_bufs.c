
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_usb_send_context {scalar_t__ urb; } ;
struct vnt_private {int num_tx_context; struct vnt_usb_send_context** tx_context; } ;


 int kfree (struct vnt_usb_send_context*) ;
 int usb_free_urb (scalar_t__) ;
 int usb_kill_urb (scalar_t__) ;

__attribute__((used)) static void vnt_free_tx_bufs(struct vnt_private *priv)
{
 struct vnt_usb_send_context *tx_context;
 int ii;

 for (ii = 0; ii < priv->num_tx_context; ii++) {
  tx_context = priv->tx_context[ii];
  if (!tx_context)
   continue;


  if (tx_context->urb) {
   usb_kill_urb(tx_context->urb);
   usb_free_urb(tx_context->urb);
  }

  kfree(tx_context);
 }
}
