
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct block_device {int bd_disk; } ;
typedef enum kobject_action { ____Placeholder_kobject_action } kobject_action ;
struct TYPE_2__ {int kobj; } ;


 TYPE_1__* disk_to_dev (int ) ;
 int kobject_name (int *) ;
 int kobject_uevent (int *,int) ;
 int pr_warn (char*,int,int ,int *) ;

void btrfs_kobject_uevent(struct block_device *bdev, enum kobject_action action)
{
 int ret;

 ret = kobject_uevent(&disk_to_dev(bdev->bd_disk)->kobj, action);
 if (ret)
  pr_warn("BTRFS: Sending event '%d' to kobject: '%s' (%p): failed\n",
   action, kobject_name(&disk_to_dev(bdev->bd_disk)->kobj),
   &disk_to_dev(bdev->bd_disk)->kobj);
}
