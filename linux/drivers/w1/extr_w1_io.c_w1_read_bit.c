
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct w1_master {TYPE_1__* bus_master; } ;
struct TYPE_2__ {int (* read_bit ) (int ) ;int data; int (* write_bit ) (int ,int) ;} ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;
 int stub3 (int ) ;
 int w1_delay (int) ;

__attribute__((used)) static u8 w1_read_bit(struct w1_master *dev)
{
 int result;
 unsigned long flags = 0;


 local_irq_save(flags);
 dev->bus_master->write_bit(dev->bus_master->data, 0);
 w1_delay(6);
 dev->bus_master->write_bit(dev->bus_master->data, 1);
 w1_delay(9);

 result = dev->bus_master->read_bit(dev->bus_master->data);
 local_irq_restore(flags);

 w1_delay(55);

 return result & 0x1;
}
