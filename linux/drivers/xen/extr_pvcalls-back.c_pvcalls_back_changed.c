
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int dev; } ;
typedef enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;


 int EINVAL ;



 int const XenbusStateInitWait ;



 int device_unregister (int *) ;
 int set_backend_state (struct xenbus_device*,int const) ;
 int xenbus_dev_fatal (struct xenbus_device*,int ,char*,int) ;
 int xenbus_dev_is_online (struct xenbus_device*) ;

__attribute__((used)) static void pvcalls_back_changed(struct xenbus_device *dev,
     enum xenbus_state frontend_state)
{
 switch (frontend_state) {
 case 129:
  set_backend_state(dev, XenbusStateInitWait);
  break;

 case 130:
 case 131:
  set_backend_state(dev, 131);
  break;

 case 132:
  set_backend_state(dev, 132);
  break;

 case 133:
  set_backend_state(dev, 133);
  if (xenbus_dev_is_online(dev))
   break;
  device_unregister(&dev->dev);
  break;
 case 128:
  set_backend_state(dev, 133);
  device_unregister(&dev->dev);
  break;

 default:
  xenbus_dev_fatal(dev, -EINVAL, "saw state %d at frontend",
     frontend_state);
  break;
 }
}
