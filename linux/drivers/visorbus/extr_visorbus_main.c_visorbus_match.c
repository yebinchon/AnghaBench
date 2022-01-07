
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct visorchannel {int dummy; } ;
struct visor_driver {TYPE_1__* channel_types; } ;
struct visor_device {struct visorchannel* visorchannel; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;
typedef int guid_t ;
struct TYPE_2__ {int version; int min_bytes; scalar_t__ name; int guid; } ;


 int VISOR_CHANNEL_SIGNATURE ;
 scalar_t__ guid_equal (int *,int const*) ;
 int guid_is_null (int *) ;
 struct visor_device* to_visor_device (struct device*) ;
 struct visor_driver* to_visor_driver (struct device_driver*) ;
 scalar_t__ visor_check_channel (int ,struct device*,int *,char*,int ,int ,int ) ;
 int * visorchannel_get_guid (struct visorchannel*) ;
 int visorchannel_get_header (struct visorchannel*) ;

__attribute__((used)) static int visorbus_match(struct device *xdev, struct device_driver *xdrv)
{
 const guid_t *channel_type;
 int i;
 struct visor_device *dev;
 struct visor_driver *drv;
 struct visorchannel *chan;

 dev = to_visor_device(xdev);
 channel_type = visorchannel_get_guid(dev->visorchannel);
 drv = to_visor_driver(xdrv);
 chan = dev->visorchannel;
 if (!drv->channel_types)
  return 0;
 for (i = 0; !guid_is_null(&drv->channel_types[i].guid); i++)
  if (guid_equal(&drv->channel_types[i].guid, channel_type) &&
      visor_check_channel(visorchannel_get_header(chan),
     xdev,
     &drv->channel_types[i].guid,
     (char *)drv->channel_types[i].name,
     drv->channel_types[i].min_bytes,
     drv->channel_types[i].version,
     VISOR_CHANNEL_SIGNATURE))
   return i + 1;
 return 0;
}
