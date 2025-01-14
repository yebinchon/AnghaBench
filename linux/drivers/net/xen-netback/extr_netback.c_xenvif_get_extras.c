
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ req_cons; } ;
struct xenvif_queue {TYPE_1__* vif; TYPE_2__ tx; } ;
struct xen_netif_extra_info {int flags; int type; } ;
typedef int extra ;
struct TYPE_3__ {int dev; } ;
typedef scalar_t__ RING_IDX ;


 int EBADR ;
 int EINVAL ;
 int RING_COPY_REQUEST (TYPE_2__*,scalar_t__,struct xen_netif_extra_info*) ;
 int XEN_NETIF_EXTRA_FLAG_MORE ;
 int XEN_NETIF_EXTRA_TYPE_MAX ;
 int memcpy (struct xen_netif_extra_info*,struct xen_netif_extra_info*,int) ;
 int netdev_err (int ,char*,...) ;
 scalar_t__ unlikely (int) ;
 int xenvif_fatal_tx_err (TYPE_1__*) ;

__attribute__((used)) static int xenvif_get_extras(struct xenvif_queue *queue,
        struct xen_netif_extra_info *extras,
        unsigned int *extra_count,
        int work_to_do)
{
 struct xen_netif_extra_info extra;
 RING_IDX cons = queue->tx.req_cons;

 do {
  if (unlikely(work_to_do-- <= 0)) {
   netdev_err(queue->vif->dev, "Missing extra info\n");
   xenvif_fatal_tx_err(queue->vif);
   return -EBADR;
  }

  RING_COPY_REQUEST(&queue->tx, cons, &extra);

  queue->tx.req_cons = ++cons;
  (*extra_count)++;

  if (unlikely(!extra.type ||
        extra.type >= XEN_NETIF_EXTRA_TYPE_MAX)) {
   netdev_err(queue->vif->dev,
       "Invalid extra type: %d\n", extra.type);
   xenvif_fatal_tx_err(queue->vif);
   return -EINVAL;
  }

  memcpy(&extras[extra.type - 1], &extra, sizeof(extra));
 } while (extra.flags & XEN_NETIF_EXTRA_FLAG_MORE);

 return work_to_do;
}
