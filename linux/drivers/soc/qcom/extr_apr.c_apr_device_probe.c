
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int driver; } ;
struct apr_driver {int (* probe ) (struct apr_device*) ;} ;
struct apr_device {int dummy; } ;


 int stub1 (struct apr_device*) ;
 struct apr_device* to_apr_device (struct device*) ;
 struct apr_driver* to_apr_driver (int ) ;

__attribute__((used)) static int apr_device_probe(struct device *dev)
{
 struct apr_device *adev = to_apr_device(dev);
 struct apr_driver *adrv = to_apr_driver(dev->driver);

 return adrv->probe(adev);
}
