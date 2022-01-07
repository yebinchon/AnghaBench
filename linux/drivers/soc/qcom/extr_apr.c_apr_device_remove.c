
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {scalar_t__ driver; } ;
struct apr_driver {int (* remove ) (struct apr_device*) ;} ;
struct TYPE_2__ {int parent; } ;
struct apr_device {int svc_id; TYPE_1__ dev; } ;
struct apr {int svcs_lock; int svcs_idr; } ;


 struct apr* dev_get_drvdata (int ) ;
 int idr_remove (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct apr_device*) ;
 struct apr_device* to_apr_device (struct device*) ;
 struct apr_driver* to_apr_driver (scalar_t__) ;

__attribute__((used)) static int apr_device_remove(struct device *dev)
{
 struct apr_device *adev = to_apr_device(dev);
 struct apr_driver *adrv;
 struct apr *apr = dev_get_drvdata(adev->dev.parent);

 if (dev->driver) {
  adrv = to_apr_driver(dev->driver);
  if (adrv->remove)
   adrv->remove(adev);
  spin_lock(&apr->svcs_lock);
  idr_remove(&apr->svcs_idr, adev->svc_id);
  spin_unlock(&apr->svcs_lock);
 }

 return 0;
}
