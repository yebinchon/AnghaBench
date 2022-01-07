
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif_queue {int rx; int vif; int tx; } ;
struct xen_netif_tx_sring {int dummy; } ;
typedef struct xen_netif_tx_sring xen_netif_rx_sring ;
typedef int grant_ref_t ;


 int BACK_RING_INIT (int *,struct xen_netif_tx_sring*,int ) ;
 int ENOMEM ;
 int XEN_PAGE_SIZE ;
 int xenbus_map_ring_valloc (int ,int *,int,void**) ;
 int xenvif_to_xenbus_device (int ) ;
 int xenvif_unmap_frontend_data_rings (struct xenvif_queue*) ;

int xenvif_map_frontend_data_rings(struct xenvif_queue *queue,
       grant_ref_t tx_ring_ref,
       grant_ref_t rx_ring_ref)
{
 void *addr;
 struct xen_netif_tx_sring *txs;
 struct xen_netif_rx_sring *rxs;

 int err = -ENOMEM;

 err = xenbus_map_ring_valloc(xenvif_to_xenbus_device(queue->vif),
         &tx_ring_ref, 1, &addr);
 if (err)
  goto err;

 txs = (struct xen_netif_tx_sring *)addr;
 BACK_RING_INIT(&queue->tx, txs, XEN_PAGE_SIZE);

 err = xenbus_map_ring_valloc(xenvif_to_xenbus_device(queue->vif),
         &rx_ring_ref, 1, &addr);
 if (err)
  goto err;

 rxs = (struct xen_netif_rx_sring *)addr;
 BACK_RING_INIT(&queue->rx, rxs, XEN_PAGE_SIZE);

 return 0;

err:
 xenvif_unmap_frontend_data_rings(queue);
 return err;
}
