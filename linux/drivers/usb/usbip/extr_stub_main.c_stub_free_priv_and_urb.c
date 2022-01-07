
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {scalar_t__ num_sgs; int * sg; struct urb** transfer_buffer; struct urb** setup_packet; } ;
struct stub_priv {int num_urbs; struct urb** urbs; int * sgl; int list; } ;


 int kfree (struct urb**) ;
 int kmem_cache_free (int ,struct stub_priv*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int sgl_free (int *) ;
 int stub_priv_cache ;
 int usb_free_urb (struct urb*) ;

void stub_free_priv_and_urb(struct stub_priv *priv)
{
 struct urb *urb;
 int i;

 for (i = 0; i < priv->num_urbs; i++) {
  urb = priv->urbs[i];

  if (!urb)
   return;

  kfree(urb->setup_packet);
  urb->setup_packet = ((void*)0);


  if (urb->transfer_buffer && !priv->sgl) {
   kfree(urb->transfer_buffer);
   urb->transfer_buffer = ((void*)0);
  }

  if (urb->num_sgs) {
   sgl_free(urb->sg);
   urb->sg = ((void*)0);
   urb->num_sgs = 0;
  }

  usb_free_urb(urb);
 }
 if (!list_empty(&priv->list))
  list_del(&priv->list);
 if (priv->sgl)
  sgl_free(priv->sgl);
 kfree(priv->urbs);
 kmem_cache_free(stub_priv_cache, priv);
}
