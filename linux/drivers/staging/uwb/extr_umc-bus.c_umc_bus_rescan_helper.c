
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int driver; } ;


 int device_attach (struct device*) ;

__attribute__((used)) static int umc_bus_rescan_helper(struct device *dev, void *data)
{
 int ret = 0;

 if (!dev->driver)
  ret = device_attach(dev);

 return ret;
}
