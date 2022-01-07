
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct w1_master {TYPE_1__* bus_master; } ;
struct TYPE_2__ {int (* read_byte ) (int ) ;int data; } ;


 int stub1 (int ) ;
 int w1_touch_bit (struct w1_master*,int) ;

u8 w1_read_8(struct w1_master *dev)
{
 int i;
 u8 res = 0;

 if (dev->bus_master->read_byte)
  res = dev->bus_master->read_byte(dev->bus_master->data);
 else
  for (i = 0; i < 8; ++i)
   res |= (w1_touch_bit(dev,1) << i);

 return res;
}
