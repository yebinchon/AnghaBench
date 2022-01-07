
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct xenvif_queue {TYPE_2__* pending_tx_info; TYPE_1__* vif; int * mmap_pages; struct gnttab_map_grant_ref* tx_map_ops; int * pages_to_map; } ;
struct xen_netif_tx_request {int gref; } ;
struct gnttab_map_grant_ref {int dummy; } ;
struct TYPE_4__ {unsigned int extra_count; int req; } ;
struct TYPE_3__ {int domid; } ;


 int GNTMAP_host_map ;
 int GNTMAP_readonly ;
 int gnttab_set_map_op (struct gnttab_map_grant_ref*,int ,int,int ,int ) ;
 int idx_to_kaddr (struct xenvif_queue*,size_t) ;
 int memcpy (int *,struct xen_netif_tx_request*,int) ;

__attribute__((used)) static inline void xenvif_tx_create_map_op(struct xenvif_queue *queue,
        u16 pending_idx,
        struct xen_netif_tx_request *txp,
        unsigned int extra_count,
        struct gnttab_map_grant_ref *mop)
{
 queue->pages_to_map[mop-queue->tx_map_ops] = queue->mmap_pages[pending_idx];
 gnttab_set_map_op(mop, idx_to_kaddr(queue, pending_idx),
     GNTMAP_host_map | GNTMAP_readonly,
     txp->gref, queue->vif->domid);

 memcpy(&queue->pending_tx_info[pending_idx].req, txp,
        sizeof(*txp));
 queue->pending_tx_info[pending_idx].extra_count = extra_count;
}
