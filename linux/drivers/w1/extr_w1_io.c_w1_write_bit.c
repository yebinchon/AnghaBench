
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w1_master {TYPE_1__* bus_master; } ;
struct TYPE_2__ {int data; int (* write_bit ) (int ,int) ;} ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;
 int stub3 (int ,int) ;
 int stub4 (int ,int) ;
 int w1_delay (int) ;
 scalar_t__ w1_disable_irqs ;

__attribute__((used)) static void w1_write_bit(struct w1_master *dev, int bit)
{
 unsigned long flags = 0;

 if(w1_disable_irqs) local_irq_save(flags);

 if (bit) {
  dev->bus_master->write_bit(dev->bus_master->data, 0);
  w1_delay(6);
  dev->bus_master->write_bit(dev->bus_master->data, 1);
  w1_delay(64);
 } else {
  dev->bus_master->write_bit(dev->bus_master->data, 0);
  w1_delay(60);
  dev->bus_master->write_bit(dev->bus_master->data, 1);
  w1_delay(10);
 }

 if(w1_disable_irqs) local_irq_restore(flags);
}
