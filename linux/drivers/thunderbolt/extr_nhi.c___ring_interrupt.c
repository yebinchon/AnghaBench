
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_ring {int work; int poll_data; int (* start_poll ) (int ) ;int running; } ;


 int __ring_interrupt_mask (struct tb_ring*,int) ;
 int schedule_work (int *) ;
 int stub1 (int ) ;

__attribute__((used)) static void __ring_interrupt(struct tb_ring *ring)
{
 if (!ring->running)
  return;

 if (ring->start_poll) {
  __ring_interrupt_mask(ring, 1);
  ring->start_poll(ring->poll_data);
 } else {
  schedule_work(&ring->work);
 }
}
