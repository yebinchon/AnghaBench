
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_ring {int hop; TYPE_1__* nhi; int is_tx; } ;
struct TYPE_2__ {scalar_t__ hop_count; } ;



__attribute__((used)) static int ring_interrupt_index(struct tb_ring *ring)
{
 int bit = ring->hop;
 if (!ring->is_tx)
  bit += ring->nhi->hop_count;
 return bit;
}
