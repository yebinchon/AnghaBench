
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct xenvif_queue {TYPE_1__* vif; int * mmap_pages; int * grant_tx_handle; } ;
struct gnttab_unmap_grant_ref {int status; int handle; int host_addr; } ;
struct TYPE_2__ {int dev; } ;


 int BUG () ;
 int GNTMAP_host_map ;
 int gnttab_set_unmap_op (struct gnttab_unmap_grant_ref*,int ,int ,int ) ;
 int gnttab_unmap_refs (struct gnttab_unmap_grant_ref*,int *,int *,int) ;
 int idx_to_kaddr (struct xenvif_queue*,size_t) ;
 int netdev_err (int ,char*,int,size_t,int ,int ,int ) ;
 int xenvif_grant_handle_reset (struct xenvif_queue*,size_t) ;

void xenvif_idx_unmap(struct xenvif_queue *queue, u16 pending_idx)
{
 int ret;
 struct gnttab_unmap_grant_ref tx_unmap_op;

 gnttab_set_unmap_op(&tx_unmap_op,
       idx_to_kaddr(queue, pending_idx),
       GNTMAP_host_map,
       queue->grant_tx_handle[pending_idx]);
 xenvif_grant_handle_reset(queue, pending_idx);

 ret = gnttab_unmap_refs(&tx_unmap_op, ((void*)0),
    &queue->mmap_pages[pending_idx], 1);
 if (ret) {
  netdev_err(queue->vif->dev,
      "Unmap fail: ret: %d pending_idx: %d host_addr: %llx handle: 0x%x status: %d\n",
      ret,
      pending_idx,
      tx_unmap_op.host_addr,
      tx_unmap_op.handle,
      tx_unmap_op.status);
  BUG();
 }
}
