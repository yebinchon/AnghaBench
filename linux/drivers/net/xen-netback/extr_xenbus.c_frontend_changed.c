
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int dev; int otherend; } ;
struct backend_info {int frontend_state; } ;
typedef enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;


 int EINVAL ;



 int const XenbusStateInitWait ;



 struct backend_info* dev_get_drvdata (int *) ;
 int device_unregister (int *) ;
 int pr_debug (char*,int ,int ) ;
 int set_backend_state (struct backend_info*,int const) ;
 int xenbus_dev_fatal (struct xenbus_device*,int ,char*,int) ;
 int xenbus_dev_is_online (struct xenbus_device*) ;
 int xenbus_strstate (int) ;

__attribute__((used)) static void frontend_changed(struct xenbus_device *dev,
        enum xenbus_state frontend_state)
{
 struct backend_info *be = dev_get_drvdata(&dev->dev);

 pr_debug("%s -> %s\n", dev->otherend, xenbus_strstate(frontend_state));

 be->frontend_state = frontend_state;

 switch (frontend_state) {
 case 129:
  set_backend_state(be, XenbusStateInitWait);
  break;

 case 130:
  break;

 case 131:
  set_backend_state(be, 131);
  break;

 case 132:
  set_backend_state(be, 132);
  break;

 case 133:
  set_backend_state(be, 133);
  if (xenbus_dev_is_online(dev))
   break;

 case 128:
  set_backend_state(be, 133);
  device_unregister(&dev->dev);
  break;

 default:
  xenbus_dev_fatal(dev, -EINVAL, "saw state %d at frontend",
     frontend_state);
  break;
 }
}
