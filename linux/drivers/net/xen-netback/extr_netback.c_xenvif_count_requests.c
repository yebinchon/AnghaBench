
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ req_cons; } ;
struct xenvif_queue {TYPE_1__* vif; TYPE_2__ tx; } ;
struct xen_netif_tx_request {int flags; scalar_t__ size; int offset; int member_0; } ;
struct TYPE_3__ {int dev; } ;
typedef scalar_t__ RING_IDX ;


 int E2BIG ;
 int EINVAL ;
 int EIO ;
 int ENODATA ;
 int RING_COPY_REQUEST (TYPE_2__*,scalar_t__,struct xen_netif_tx_request*) ;
 int XEN_NETBK_LEGACY_SLOTS_MAX ;
 int XEN_NETTXF_more_data ;
 scalar_t__ XEN_PAGE_SIZE ;
 int fatal_skb_slots ;
 scalar_t__ net_ratelimit () ;
 int netdev_dbg (int ,char*,int,int) ;
 int netdev_err (int ,char*,int,...) ;
 scalar_t__ unlikely (int) ;
 int xenvif_fatal_tx_err (TYPE_1__*) ;
 int xenvif_tx_err (struct xenvif_queue*,struct xen_netif_tx_request*,unsigned int,scalar_t__) ;

__attribute__((used)) static int xenvif_count_requests(struct xenvif_queue *queue,
     struct xen_netif_tx_request *first,
     unsigned int extra_count,
     struct xen_netif_tx_request *txp,
     int work_to_do)
{
 RING_IDX cons = queue->tx.req_cons;
 int slots = 0;
 int drop_err = 0;
 int more_data;

 if (!(first->flags & XEN_NETTXF_more_data))
  return 0;

 do {
  struct xen_netif_tx_request dropped_tx = { 0 };

  if (slots >= work_to_do) {
   netdev_err(queue->vif->dev,
       "Asked for %d slots but exceeds this limit\n",
       work_to_do);
   xenvif_fatal_tx_err(queue->vif);
   return -ENODATA;
  }




  if (unlikely(slots >= fatal_skb_slots)) {
   netdev_err(queue->vif->dev,
       "Malicious frontend using %d slots, threshold %u\n",
       slots, fatal_skb_slots);
   xenvif_fatal_tx_err(queue->vif);
   return -E2BIG;
  }
  if (!drop_err && slots >= XEN_NETBK_LEGACY_SLOTS_MAX) {
   if (net_ratelimit())
    netdev_dbg(queue->vif->dev,
        "Too many slots (%d) exceeding limit (%d), dropping packet\n",
        slots, XEN_NETBK_LEGACY_SLOTS_MAX);
   drop_err = -E2BIG;
  }

  if (drop_err)
   txp = &dropped_tx;

  RING_COPY_REQUEST(&queue->tx, cons + slots, txp);
  if (!drop_err && txp->size > first->size) {
   if (net_ratelimit())
    netdev_dbg(queue->vif->dev,
        "Invalid tx request, slot size %u > remaining size %u\n",
        txp->size, first->size);
   drop_err = -EIO;
  }

  first->size -= txp->size;
  slots++;

  if (unlikely((txp->offset + txp->size) > XEN_PAGE_SIZE)) {
   netdev_err(queue->vif->dev, "Cross page boundary, txp->offset: %u, size: %u\n",
     txp->offset, txp->size);
   xenvif_fatal_tx_err(queue->vif);
   return -EINVAL;
  }

  more_data = txp->flags & XEN_NETTXF_more_data;

  if (!drop_err)
   txp++;

 } while (more_data);

 if (drop_err) {
  xenvif_tx_err(queue, first, extra_count, cons + slots);
  return drop_err;
 }

 return slots;
}
