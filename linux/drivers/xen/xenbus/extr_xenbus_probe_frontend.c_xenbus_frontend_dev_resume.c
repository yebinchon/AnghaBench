
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int work; } ;
struct device {int dummy; } ;


 scalar_t__ XS_LOCAL ;
 int schedule_work (int *) ;
 struct xenbus_device* to_xenbus_device (struct device*) ;
 scalar_t__ xen_store_domain_type ;
 int xenbus_dev_resume (struct device*) ;

__attribute__((used)) static int xenbus_frontend_dev_resume(struct device *dev)
{




 if (xen_store_domain_type == XS_LOCAL) {
  struct xenbus_device *xdev = to_xenbus_device(dev);

  schedule_work(&xdev->work);

  return 0;
 }

 return xenbus_dev_resume(dev);
}
