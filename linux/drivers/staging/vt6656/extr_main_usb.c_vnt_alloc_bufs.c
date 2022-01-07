
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnt_usb_send_context {int pkt_no; int in_use; void* urb; struct vnt_private* priv; } ;
struct vnt_rcb {int in_use; int skb; void* urb; struct vnt_private* priv; } ;
struct TYPE_2__ {void* data_buf; } ;
struct vnt_private {int num_tx_context; int num_rcb; void* interrupt_urb; TYPE_1__ int_buf; int rx_buf_sz; struct vnt_rcb** rcb; struct vnt_usb_send_context** tx_context; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_INTERRUPT_SIZE ;
 int dev_alloc_skb (int ) ;
 void* kmalloc (int,int ) ;
 struct vnt_rcb* kzalloc (int,int ) ;
 void* usb_alloc_urb (int ,int ) ;
 int usb_free_urb (void*) ;
 int vnt_free_rx_bufs (struct vnt_private*) ;
 int vnt_free_tx_bufs (struct vnt_private*) ;
 int vnt_submit_rx_urb (struct vnt_private*,struct vnt_rcb*) ;

__attribute__((used)) static int vnt_alloc_bufs(struct vnt_private *priv)
{
 int ret = 0;
 struct vnt_usb_send_context *tx_context;
 struct vnt_rcb *rcb;
 int ii;

 for (ii = 0; ii < priv->num_tx_context; ii++) {
  tx_context = kmalloc(sizeof(*tx_context), GFP_KERNEL);
  if (!tx_context) {
   ret = -ENOMEM;
   goto free_tx;
  }

  priv->tx_context[ii] = tx_context;
  tx_context->priv = priv;
  tx_context->pkt_no = ii;


  tx_context->urb = usb_alloc_urb(0, GFP_KERNEL);
  if (!tx_context->urb) {
   ret = -ENOMEM;
   goto free_tx;
  }

  tx_context->in_use = 0;
 }

 for (ii = 0; ii < priv->num_rcb; ii++) {
  priv->rcb[ii] = kzalloc(sizeof(*priv->rcb[ii]), GFP_KERNEL);
  if (!priv->rcb[ii]) {
   ret = -ENOMEM;
   goto free_rx_tx;
  }

  rcb = priv->rcb[ii];

  rcb->priv = priv;


  rcb->urb = usb_alloc_urb(0, GFP_KERNEL);
  if (!rcb->urb) {
   ret = -ENOMEM;
   goto free_rx_tx;
  }

  rcb->skb = dev_alloc_skb(priv->rx_buf_sz);
  if (!rcb->skb) {
   ret = -ENOMEM;
   goto free_rx_tx;
  }

  rcb->in_use = 0;


  ret = vnt_submit_rx_urb(priv, rcb);
  if (ret)
   goto free_rx_tx;
 }

 priv->interrupt_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!priv->interrupt_urb) {
  ret = -ENOMEM;
  goto free_rx_tx;
 }

 priv->int_buf.data_buf = kmalloc(MAX_INTERRUPT_SIZE, GFP_KERNEL);
 if (!priv->int_buf.data_buf) {
  ret = -ENOMEM;
  goto free_rx_tx_urb;
 }

 return 0;

free_rx_tx_urb:
 usb_free_urb(priv->interrupt_urb);
free_rx_tx:
 vnt_free_rx_bufs(priv);
free_tx:
 vnt_free_tx_bufs(priv);
 return ret;
}
