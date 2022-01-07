
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siox_device {int status_read_clean; } ;


 int siox_device_synced (struct siox_device*) ;
 int siox_device_wdg_error (struct siox_device*,int ) ;

bool siox_device_connected(struct siox_device *sdevice)
{
 if (!siox_device_synced(sdevice))
  return 0;

 return !siox_device_wdg_error(sdevice, sdevice->status_read_clean);
}
