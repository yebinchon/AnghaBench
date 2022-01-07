
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct visor_vbus_headerinfo {int dummy; } ;
struct visor_vbus_deviceinfo {int dummy; } ;
struct visor_driver {int name; TYPE_2__* channel_types; } ;
struct TYPE_3__ {int driver; } ;
struct visor_device {int visorchannel; int channel_type_guid; TYPE_1__ device; scalar_t__ vbus_hdr_info; int chipset_dev_no; int chipset_bus_no; } ;
struct TYPE_4__ {char* name; int guid; } ;


 int BUS_ROOT_DEVICE ;
 int bus_device_info_init (struct visor_vbus_deviceinfo*,char const*,int ) ;
 int chipset_driverinfo ;
 int clientbus_driverinfo ;
 scalar_t__ guid_equal (int *,int *) ;
 struct visor_driver* to_visor_driver (int ) ;
 struct visor_device* visorbus_get_device_by_id (int ,int ,int *) ;
 int write_vbus_bus_info (int ,struct visor_vbus_headerinfo*,int *) ;
 int write_vbus_chp_info (int ,struct visor_vbus_headerinfo*,int *) ;
 int write_vbus_dev_info (int ,struct visor_vbus_headerinfo*,struct visor_vbus_deviceinfo*,int ) ;

__attribute__((used)) static void publish_vbus_dev_info(struct visor_device *visordev)
{
 int i;
 struct visor_device *bdev;
 struct visor_driver *visordrv;
 u32 bus_no = visordev->chipset_bus_no;
 u32 dev_no = visordev->chipset_dev_no;
 struct visor_vbus_deviceinfo dev_info;
 const char *chan_type_name = ((void*)0);
 struct visor_vbus_headerinfo *hdr_info;

 if (!visordev->device.driver)
  return;
 bdev = visorbus_get_device_by_id(bus_no, BUS_ROOT_DEVICE, ((void*)0));
 if (!bdev)
  return;
 hdr_info = (struct visor_vbus_headerinfo *)bdev->vbus_hdr_info;
 if (!hdr_info)
  return;
 visordrv = to_visor_driver(visordev->device.driver);







 for (i = 0; visordrv->channel_types[i].name; i++) {
  if (guid_equal(&visordrv->channel_types[i].guid,
          &visordev->channel_type_guid)) {
   chan_type_name = visordrv->channel_types[i].name;
   break;
  }
 }
 bus_device_info_init(&dev_info, chan_type_name, visordrv->name);
 write_vbus_dev_info(bdev->visorchannel, hdr_info, &dev_info, dev_no);
 write_vbus_chp_info(bdev->visorchannel, hdr_info, &chipset_driverinfo);
 write_vbus_bus_info(bdev->visorchannel, hdr_info,
       &clientbus_driverinfo);
}
