
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scsi_tape {TYPE_1__* modes; TYPE_3__* device; } ;
struct TYPE_8__ {int kobj; } ;
struct TYPE_6__ {int kobj; } ;
struct TYPE_7__ {TYPE_2__ sdev_gendev; } ;
struct TYPE_5__ {TYPE_4__** devs; } ;


 int ST_NBR_MODES ;
 int create_one_cdev (struct scsi_tape*,int,int) ;
 int sysfs_create_link (int *,int *,char*) ;

__attribute__((used)) static int create_cdevs(struct scsi_tape *tape)
{
 int mode, error;
 for (mode = 0; mode < ST_NBR_MODES; ++mode) {
  error = create_one_cdev(tape, mode, 0);
  if (error)
   return error;
  error = create_one_cdev(tape, mode, 1);
  if (error)
   return error;
 }

 return sysfs_create_link(&tape->device->sdev_gendev.kobj,
     &tape->modes[0].devs[0]->kobj, "tape");
}
