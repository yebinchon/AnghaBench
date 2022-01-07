
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds_device {int byte_buf; } ;


 int ds_read_byte (struct ds_device*,int *) ;

__attribute__((used)) static u8 ds9490r_read_byte(void *data)
{
 struct ds_device *dev = data;
 int err;

 err = ds_read_byte(dev, &dev->byte_buf);
 if (err)
  return 0;

 return dev->byte_buf;
}
