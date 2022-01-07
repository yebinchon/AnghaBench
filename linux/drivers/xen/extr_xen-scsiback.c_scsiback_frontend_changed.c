
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int const state; int dev; } ;
struct vscsibk_info {int irq; } ;
typedef enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;


 int EINVAL ;
 int VSCSIBACK_OP_ADD_OR_DEL_LUN ;
 int VSCSIBACK_OP_UPDATEDEV_STATE ;





 int const XenbusStateReconfigured ;


 struct vscsibk_info* dev_get_drvdata (int *) ;
 int device_unregister (int *) ;
 int scsiback_disconnect (struct vscsibk_info*) ;
 int scsiback_do_lun_hotplug (struct vscsibk_info*,int ) ;
 int scsiback_map (struct vscsibk_info*) ;
 int xenbus_dev_fatal (struct xenbus_device*,int ,char*,int) ;
 int xenbus_dev_is_online (struct xenbus_device*) ;
 int xenbus_switch_state (struct xenbus_device*,int const) ;

__attribute__((used)) static void scsiback_frontend_changed(struct xenbus_device *dev,
     enum xenbus_state frontend_state)
{
 struct vscsibk_info *info = dev_get_drvdata(&dev->dev);

 switch (frontend_state) {
 case 130:
  break;

 case 131:
  if (scsiback_map(info))
   break;

  scsiback_do_lun_hotplug(info, VSCSIBACK_OP_ADD_OR_DEL_LUN);
  xenbus_switch_state(dev, 132);
  break;

 case 132:
  scsiback_do_lun_hotplug(info, VSCSIBACK_OP_UPDATEDEV_STATE);

  if (dev->state == 132)
   break;

  xenbus_switch_state(dev, 132);
  break;

 case 133:
  if (info->irq)
   scsiback_disconnect(info);

  xenbus_switch_state(dev, 133);
  break;

 case 134:
  xenbus_switch_state(dev, 134);
  if (xenbus_dev_is_online(dev))
   break;

 case 128:
  device_unregister(&dev->dev);
  break;

 case 129:
  scsiback_do_lun_hotplug(info, VSCSIBACK_OP_ADD_OR_DEL_LUN);
  xenbus_switch_state(dev, XenbusStateReconfigured);

  break;

 default:
  xenbus_dev_fatal(dev, -EINVAL, "saw state %d at frontend",
     frontend_state);
  break;
 }
}
