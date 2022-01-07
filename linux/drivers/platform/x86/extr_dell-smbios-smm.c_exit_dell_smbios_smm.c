
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; } ;


 scalar_t__ buffer ;
 int dell_smbios_unregister_device (int *) ;
 int free_page (unsigned long) ;
 TYPE_1__* platform_device ;
 int platform_device_unregister (TYPE_1__*) ;

void exit_dell_smbios_smm(void)
{
 if (platform_device) {
  dell_smbios_unregister_device(&platform_device->dev);
  platform_device_unregister(platform_device);
  free_page((unsigned long)buffer);
 }
}
