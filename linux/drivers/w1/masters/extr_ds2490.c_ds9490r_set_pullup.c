
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds_device {int dummy; } ;


 scalar_t__ ds_set_pullup (struct ds_device*,int) ;

__attribute__((used)) static u8 ds9490r_set_pullup(void *data, int delay)
{
 struct ds_device *dev = data;

 if (ds_set_pullup(dev, delay))
  return 1;

 return 0;
}
