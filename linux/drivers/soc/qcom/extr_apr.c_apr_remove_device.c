
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct apr_device {int dev; } ;


 int device_unregister (int *) ;
 struct apr_device* to_apr_device (struct device*) ;

__attribute__((used)) static int apr_remove_device(struct device *dev, void *null)
{
 struct apr_device *adev = to_apr_device(dev);

 device_unregister(&adev->dev);

 return 0;
}
