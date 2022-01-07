
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_ring {TYPE_1__* nhi; int lock; scalar_t__ start_poll; } ;
struct TYPE_2__ {int lock; } ;


 int __ring_interrupt_mask (struct tb_ring*,int) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void tb_ring_poll_complete(struct tb_ring *ring)
{
 unsigned long flags;

 spin_lock_irqsave(&ring->nhi->lock, flags);
 spin_lock(&ring->lock);
 if (ring->start_poll)
  __ring_interrupt_mask(ring, 0);
 spin_unlock(&ring->lock);
 spin_unlock_irqrestore(&ring->nhi->lock, flags);
}
