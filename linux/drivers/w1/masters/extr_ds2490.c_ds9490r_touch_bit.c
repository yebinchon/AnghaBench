
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds_device {int byte_buf; } ;


 scalar_t__ ds_touch_bit (struct ds_device*,int ,int *) ;

__attribute__((used)) static u8 ds9490r_touch_bit(void *data, u8 bit)
{
 struct ds_device *dev = data;

 if (ds_touch_bit(dev, bit, &dev->byte_buf))
  return 0;

 return dev->byte_buf;
}
