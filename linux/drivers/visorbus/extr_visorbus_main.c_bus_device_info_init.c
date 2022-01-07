
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct visor_vbus_deviceinfo {int infostrs; int drvname; int devtype; } ;
struct TYPE_2__ {char const* release; } ;


 int memset (struct visor_vbus_deviceinfo*,int ,int) ;
 int snprintf (int ,int,char*,char const*) ;
 TYPE_1__* utsname () ;

__attribute__((used)) static void bus_device_info_init(
  struct visor_vbus_deviceinfo *bus_device_info_ptr,
  const char *dev_type, const char *drv_name)
{
 memset(bus_device_info_ptr, 0, sizeof(struct visor_vbus_deviceinfo));
 snprintf(bus_device_info_ptr->devtype,
   sizeof(bus_device_info_ptr->devtype),
   "%s", (dev_type) ? dev_type : "unknownType");
 snprintf(bus_device_info_ptr->drvname,
   sizeof(bus_device_info_ptr->drvname),
   "%s", (drv_name) ? drv_name : "unknownDriver");
 snprintf(bus_device_info_ptr->infostrs,
   sizeof(bus_device_info_ptr->infostrs), "kernel ver. %s",
   utsname()->release);
}
