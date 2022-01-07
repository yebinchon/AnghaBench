
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visor_device {int pausing; } ;


 int visorchipset_initiate_device_pause_resume (struct visor_device*,int) ;

int visorchipset_device_pause(struct visor_device *dev_info)
{
 int err;

 err = visorchipset_initiate_device_pause_resume(dev_info, 1);
 if (err < 0) {
  dev_info->pausing = 0;
  return err;
 }
 return 0;
}
