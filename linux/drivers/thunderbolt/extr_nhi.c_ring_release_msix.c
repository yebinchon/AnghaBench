
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_ring {scalar_t__ irq; scalar_t__ vector; TYPE_1__* nhi; } ;
struct TYPE_2__ {int msix_ida; } ;


 int free_irq (scalar_t__,struct tb_ring*) ;
 int ida_simple_remove (int *,scalar_t__) ;

__attribute__((used)) static void ring_release_msix(struct tb_ring *ring)
{
 if (ring->irq <= 0)
  return;

 free_irq(ring->irq, ring);
 ida_simple_remove(&ring->nhi->msix_ida, ring->vector);
 ring->vector = 0;
 ring->irq = 0;
}
