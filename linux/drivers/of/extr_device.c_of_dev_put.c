
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int put_device (int *) ;

void of_dev_put(struct platform_device *dev)
{
 if (dev)
  put_device(&dev->dev);
}
