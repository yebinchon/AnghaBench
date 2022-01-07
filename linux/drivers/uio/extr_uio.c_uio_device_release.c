
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_device {int dummy; } ;
struct device {int dummy; } ;


 struct uio_device* dev_get_drvdata (struct device*) ;
 int kfree (struct uio_device*) ;

__attribute__((used)) static void uio_device_release(struct device *dev)
{
 struct uio_device *idev = dev_get_drvdata(dev);

 kfree(idev);
}
