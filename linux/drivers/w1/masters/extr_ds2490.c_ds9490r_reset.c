
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds_device {int dummy; } ;


 int ds_reset (struct ds_device*) ;

__attribute__((used)) static u8 ds9490r_reset(void *data)
{
 struct ds_device *dev = data;
 int err;

 err = ds_reset(dev);
 if (err)
  return 1;

 return 0;
}
