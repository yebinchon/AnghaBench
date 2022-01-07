
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siox_device {int status_read_clean; } ;


 int siox_device_counter_error (struct siox_device*,int ) ;
 scalar_t__ siox_device_type_error (struct siox_device*,int ) ;

bool siox_device_synced(struct siox_device *sdevice)
{
 if (siox_device_type_error(sdevice, sdevice->status_read_clean))
  return 0;

 return !siox_device_counter_error(sdevice, sdevice->status_read_clean);

}
