
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dasd_device {int state; int debug_area; TYPE_2__* cdev; void* debugfs_dentry; int profile; struct dasd_block* block; } ;
struct dasd_block {int profile; void* debugfs_dentry; TYPE_1__* gdp; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int disk_name; } ;


 scalar_t__ DASD_PROFILE_ON ;
 int DASD_STATE_BASIC ;
 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,char*) ;
 int DBF_EMERG ;
 int DBF_WARNING ;
 int dasd_debugfs_root_entry ;
 void* dasd_debugfs_setup (int ,int ) ;
 int dasd_gendisk_alloc (struct dasd_block*) ;
 scalar_t__ dasd_global_profile_level ;
 int dasd_hosts_init (void*,struct dasd_device*) ;
 int dasd_profile_init (int *,void*) ;
 int dasd_profile_on (int *) ;
 int debug_register (int ,int,int,int) ;
 int debug_register_view (int ,int *) ;
 int debug_set_level (int ,int ) ;
 int debug_sprintf_view ;
 int dev_name (int *) ;

__attribute__((used)) static int dasd_state_known_to_basic(struct dasd_device *device)
{
 struct dasd_block *block = device->block;
 int rc = 0;


 if (block) {
  rc = dasd_gendisk_alloc(block);
  if (rc)
   return rc;
  block->debugfs_dentry =
   dasd_debugfs_setup(block->gdp->disk_name,
        dasd_debugfs_root_entry);
  dasd_profile_init(&block->profile, block->debugfs_dentry);
  if (dasd_global_profile_level == DASD_PROFILE_ON)
   dasd_profile_on(&device->block->profile);
 }
 device->debugfs_dentry =
  dasd_debugfs_setup(dev_name(&device->cdev->dev),
       dasd_debugfs_root_entry);
 dasd_profile_init(&device->profile, device->debugfs_dentry);
 dasd_hosts_init(device->debugfs_dentry, device);


 device->debug_area = debug_register(dev_name(&device->cdev->dev), 4, 1,
         8 * sizeof(long));
 debug_register_view(device->debug_area, &debug_sprintf_view);
 debug_set_level(device->debug_area, DBF_WARNING);
 DBF_DEV_EVENT(DBF_EMERG, device, "%s", "debug area created");

 device->state = DASD_STATE_BASIC;

 return rc;
}
