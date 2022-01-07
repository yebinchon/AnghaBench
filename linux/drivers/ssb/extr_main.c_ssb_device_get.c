
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_device {int dev; } ;


 int get_device (int ) ;

__attribute__((used)) static struct ssb_device *ssb_device_get(struct ssb_device *dev)
{
 if (dev)
  get_device(dev->dev);
 return dev;
}
