
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct xenvif_queue {scalar_t__* grant_tx_handle; TYPE_1__* vif; } ;
struct TYPE_2__ {int dev; } ;


 int BUG () ;
 scalar_t__ NETBACK_INVALID_HANDLE ;
 int netdev_err (int ,char*,size_t) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void xenvif_grant_handle_reset(struct xenvif_queue *queue,
          u16 pending_idx)
{
 if (unlikely(queue->grant_tx_handle[pending_idx] ==
       NETBACK_INVALID_HANDLE)) {
  netdev_err(queue->vif->dev,
      "Trying to unmap invalid handle! pending_idx: 0x%x\n",
      pending_idx);
  BUG();
 }
 queue->grant_tx_handle[pending_idx] = NETBACK_INVALID_HANDLE;
}
