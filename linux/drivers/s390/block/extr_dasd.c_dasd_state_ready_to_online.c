
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hd_struct {int dummy; } ;
struct gendisk {int dummy; } ;
struct disk_part_iter {int dummy; } ;
struct dasd_device {int features; TYPE_4__* block; int state; } ;
struct TYPE_8__ {TYPE_1__* bdev; struct gendisk* gdp; } ;
struct TYPE_7__ {int kobj; } ;
struct TYPE_6__ {int kobj; } ;
struct TYPE_5__ {struct gendisk* bd_disk; } ;


 int DASD_FEATURE_USERAW ;
 int DASD_STATE_ONLINE ;
 int DISK_PITER_INCL_PART0 ;
 int KOBJ_CHANGE ;
 int dasd_schedule_block_bh (TYPE_4__*) ;
 int disk_part_iter_exit (struct disk_part_iter*) ;
 int disk_part_iter_init (struct disk_part_iter*,struct gendisk*,int ) ;
 struct hd_struct* disk_part_iter_next (struct disk_part_iter*) ;
 TYPE_3__* disk_to_dev (struct gendisk*) ;
 int kobject_uevent (int *,int ) ;
 TYPE_2__* part_to_dev (struct hd_struct*) ;

__attribute__((used)) static int
dasd_state_ready_to_online(struct dasd_device * device)
{
 struct gendisk *disk;
 struct disk_part_iter piter;
 struct hd_struct *part;

 device->state = DASD_STATE_ONLINE;
 if (device->block) {
  dasd_schedule_block_bh(device->block);
  if ((device->features & DASD_FEATURE_USERAW)) {
   disk = device->block->gdp;
   kobject_uevent(&disk_to_dev(disk)->kobj, KOBJ_CHANGE);
   return 0;
  }
  disk = device->block->bdev->bd_disk;
  disk_part_iter_init(&piter, disk, DISK_PITER_INCL_PART0);
  while ((part = disk_part_iter_next(&piter)))
   kobject_uevent(&part_to_dev(part)->kobj, KOBJ_CHANGE);
  disk_part_iter_exit(&piter);
 }
 return 0;
}
