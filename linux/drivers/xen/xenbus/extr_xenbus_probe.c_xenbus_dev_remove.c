
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_driver {int (* remove ) (struct xenbus_device*) ;} ;
struct xenbus_device {int nodename; } ;
struct device {int driver; } ;


 int DPRINTK (char*,int ) ;
 int XenbusStateClosed ;
 int free_otherend_details (struct xenbus_device*) ;
 int free_otherend_watch (struct xenbus_device*) ;
 int stub1 (struct xenbus_device*) ;
 struct xenbus_device* to_xenbus_device (struct device*) ;
 struct xenbus_driver* to_xenbus_driver (int ) ;
 int xenbus_switch_state (struct xenbus_device*,int ) ;

int xenbus_dev_remove(struct device *_dev)
{
 struct xenbus_device *dev = to_xenbus_device(_dev);
 struct xenbus_driver *drv = to_xenbus_driver(_dev->driver);

 DPRINTK("%s", dev->nodename);

 free_otherend_watch(dev);

 if (drv->remove)
  drv->remove(dev);

 free_otherend_details(dev);

 xenbus_switch_state(dev, XenbusStateClosed);
 return 0;
}
