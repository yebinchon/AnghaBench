
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_ring {TYPE_1__* nhi; int lock; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int lock; } ;


 int IRQ_HANDLED ;
 int __ring_interrupt (struct tb_ring*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t ring_msix(int irq, void *data)
{
 struct tb_ring *ring = data;

 spin_lock(&ring->nhi->lock);
 spin_lock(&ring->lock);
 __ring_interrupt(ring);
 spin_unlock(&ring->lock);
 spin_unlock(&ring->nhi->lock);

 return IRQ_HANDLED;
}
