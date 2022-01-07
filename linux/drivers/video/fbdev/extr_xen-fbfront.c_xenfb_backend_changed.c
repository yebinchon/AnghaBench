
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xenfb_info {int update_wanted; int feature_resize; TYPE_1__* xbdev; } ;
struct xenbus_device {int const state; int otherend; int dev; } ;
typedef enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;
struct TYPE_2__ {int otherend; } ;
 struct xenfb_info* dev_get_drvdata (int *) ;
 int xenbus_frontend_closed (struct xenbus_device*) ;
 int xenbus_read_unsigned (int ,char*,int ) ;
 int xenbus_switch_state (struct xenbus_device*,int const) ;

__attribute__((used)) static void xenfb_backend_changed(struct xenbus_device *dev,
      enum xenbus_state backend_state)
{
 struct xenfb_info *info = dev_get_drvdata(&dev->dev);

 switch (backend_state) {
 case 131:
 case 132:
 case 129:
 case 130:
 case 128:
  break;

 case 133:
  xenbus_switch_state(dev, 134);
  break;

 case 134:





  if (dev->state != 134)

   xenbus_switch_state(dev, 134);

  if (xenbus_read_unsigned(info->xbdev->otherend,
      "request-update", 0))
   info->update_wanted = 1;

  info->feature_resize = xenbus_read_unsigned(dev->otherend,
       "feature-resize", 0);
  break;

 case 136:
  if (dev->state == 136)
   break;

 case 135:
  xenbus_frontend_closed(dev);
  break;
 }
}
