
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct w1_master {TYPE_1__* bus_master; } ;
struct TYPE_2__ {int data; int (* write_block ) (int ,int const*,int) ;} ;


 int stub1 (int ,int const*,int) ;
 int w1_post_write (struct w1_master*) ;
 int w1_pre_write (struct w1_master*) ;
 int w1_write_8 (struct w1_master*,int const) ;

void w1_write_block(struct w1_master *dev, const u8 *buf, int len)
{
 int i;

 if (dev->bus_master->write_block) {
  w1_pre_write(dev);
  dev->bus_master->write_block(dev->bus_master->data, buf, len);
 }
 else
  for (i = 0; i < len; ++i)
   w1_write_8(dev, buf[i]);
 w1_post_write(dev);
}
