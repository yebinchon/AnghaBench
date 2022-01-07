
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct most_channel {int fifo_lock; int halt_fifo; scalar_t__ enqueue_halt; } ;


 int list_empty (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static bool hdm_mbo_ready(struct most_channel *c)
{
 bool empty;

 if (c->enqueue_halt)
  return 0;

 spin_lock_irq(&c->fifo_lock);
 empty = list_empty(&c->halt_fifo);
 spin_unlock_irq(&c->fifo_lock);

 return !empty;
}
