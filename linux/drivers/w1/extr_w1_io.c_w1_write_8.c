
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct w1_master {TYPE_1__* bus_master; } ;
struct TYPE_2__ {int data; int (* write_byte ) (int ,int) ;} ;


 int stub1 (int ,int) ;
 int w1_post_write (struct w1_master*) ;
 int w1_pre_write (struct w1_master*) ;
 int w1_touch_bit (struct w1_master*,int) ;

void w1_write_8(struct w1_master *dev, u8 byte)
{
 int i;

 if (dev->bus_master->write_byte) {
  w1_pre_write(dev);
  dev->bus_master->write_byte(dev->bus_master->data, byte);
 }
 else
  for (i = 0; i < 8; ++i) {
   if (i == 7)
    w1_pre_write(dev);
   w1_touch_bit(dev, (byte >> i) & 0x1);
  }
 w1_post_write(dev);
}
