
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct w1_master {TYPE_1__* bus_master; } ;
struct TYPE_2__ {int (* triplet ) (int ,int) ;scalar_t__ touch_bit; int data; } ;


 int stub1 (int ,int) ;
 int w1_touch_bit (struct w1_master*,int) ;
 int w1_write_bit (struct w1_master*,int) ;

u8 w1_triplet(struct w1_master *dev, int bdir)
{
 if (dev->bus_master->triplet)
  return dev->bus_master->triplet(dev->bus_master->data, bdir);
 else {
  u8 id_bit = w1_touch_bit(dev, 1);
  u8 comp_bit = w1_touch_bit(dev, 1);
  u8 retval;

  if (id_bit && comp_bit)
   return 0x03;

  if (!id_bit && !comp_bit) {

   retval = bdir ? 0x04 : 0;
  } else {

   bdir = id_bit;
   retval = id_bit ? 0x05 : 0x02;
  }

  if (dev->bus_master->touch_bit)
   w1_touch_bit(dev, bdir);
  else
   w1_write_bit(dev, bdir);
  return retval;
 }
}
