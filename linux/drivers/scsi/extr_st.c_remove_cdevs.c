
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct st_modedef {scalar_t__* devs; scalar_t__* cdevs; } ;
struct scsi_tape {struct st_modedef* modes; TYPE_2__* device; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ sdev_gendev; } ;


 int ST_NBR_MODES ;
 int cdev_del (scalar_t__) ;
 int device_unregister (scalar_t__) ;
 int sysfs_remove_link (int *,char*) ;

__attribute__((used)) static void remove_cdevs(struct scsi_tape *tape)
{
 int mode, rew;
 sysfs_remove_link(&tape->device->sdev_gendev.kobj, "tape");
 for (mode = 0; mode < ST_NBR_MODES; mode++) {
  struct st_modedef *STm = &(tape->modes[mode]);
  for (rew = 0; rew < 2; rew++) {
   if (STm->cdevs[rew])
    cdev_del(STm->cdevs[rew]);
   if (STm->devs[rew])
    device_unregister(STm->devs[rew]);
  }
 }
}
