
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_rcb {scalar_t__ skb; scalar_t__ urb; } ;
struct vnt_private {int num_rcb; struct vnt_rcb** rcb; } ;


 int dev_kfree_skb (scalar_t__) ;
 int kfree (struct vnt_rcb*) ;
 int usb_free_urb (scalar_t__) ;
 int usb_kill_urb (scalar_t__) ;

__attribute__((used)) static void vnt_free_rx_bufs(struct vnt_private *priv)
{
 struct vnt_rcb *rcb;
 int ii;

 for (ii = 0; ii < priv->num_rcb; ii++) {
  rcb = priv->rcb[ii];
  if (!rcb)
   continue;


  if (rcb->urb) {
   usb_kill_urb(rcb->urb);
   usb_free_urb(rcb->urb);
  }


  if (rcb->skb)
   dev_kfree_skb(rcb->skb);

  kfree(rcb);
 }
}
