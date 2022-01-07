
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recv_priv {int free_recv_skb_queue; int rx_skb_queue; int pallocated_recv_buf; scalar_t__ precv_buf; struct _adapter* adapter; } ;
struct recv_buf {int dummy; } ;
struct _adapter {int pnetdev; } ;


 int NR_RECVBUFF ;
 int kfree (int ) ;
 int netdev_warn (int ,char*,...) ;
 int r8712_os_recvbuf_resource_free (struct _adapter*,struct recv_buf*) ;
 scalar_t__ skb_queue_len (int *) ;
 int skb_queue_purge (int *) ;

void r8712_free_recv_priv(struct recv_priv *precvpriv)
{
 int i;
 struct recv_buf *precvbuf;
 struct _adapter *padapter = precvpriv->adapter;

 precvbuf = (struct recv_buf *)precvpriv->precv_buf;
 for (i = 0; i < NR_RECVBUFF; i++) {
  r8712_os_recvbuf_resource_free(padapter, precvbuf);
  precvbuf++;
 }
 kfree(precvpriv->pallocated_recv_buf);
 skb_queue_purge(&precvpriv->rx_skb_queue);
 if (skb_queue_len(&precvpriv->rx_skb_queue))
  netdev_warn(padapter->pnetdev, "r8712u: rx_skb_queue not empty\n");
 skb_queue_purge(&precvpriv->free_recv_skb_queue);
 if (skb_queue_len(&precvpriv->free_recv_skb_queue))
  netdev_warn(padapter->pnetdev, "r8712u: free_recv_skb_queue not empty %d\n",
       skb_queue_len(&precvpriv->free_recv_skb_queue));
}
