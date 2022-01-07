
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visor_device {int resuming; } ;


 int visorchipset_initiate_device_pause_resume (struct visor_device*,int) ;

int visorchipset_device_resume(struct visor_device *dev_info)
{
 int err;

 err = visorchipset_initiate_device_pause_resume(dev_info, 0);
 if (err < 0) {
  dev_info->resuming = 0;
  return err;
 }
 return 0;
}
