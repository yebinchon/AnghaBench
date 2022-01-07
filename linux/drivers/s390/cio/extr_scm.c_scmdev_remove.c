
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_driver {int (* remove ) (struct scm_device*) ;} ;
struct scm_device {int dummy; } ;
struct device {int driver; } ;


 int ENODEV ;
 int stub1 (struct scm_device*) ;
 struct scm_device* to_scm_dev (struct device*) ;
 struct scm_driver* to_scm_drv (int ) ;

__attribute__((used)) static int scmdev_remove(struct device *dev)
{
 struct scm_device *scmdev = to_scm_dev(dev);
 struct scm_driver *scmdrv = to_scm_drv(dev->driver);

 return scmdrv->remove ? scmdrv->remove(scmdev) : -ENODEV;
}
