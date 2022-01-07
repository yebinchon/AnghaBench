
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stat_group; int scsi_lu_group; int scsi_tgt_dev_group; int scsi_dev_group; } ;
struct se_device {TYPE_1__ dev_stat_grps; } ;


 int config_group_init_type_name (int *,char*,int *) ;
 int configfs_add_default_group (int *,int *) ;
 int target_stat_scsi_dev_cit ;
 int target_stat_scsi_lu_cit ;
 int target_stat_scsi_tgt_dev_cit ;

void target_stat_setup_dev_default_groups(struct se_device *dev)
{
 config_group_init_type_name(&dev->dev_stat_grps.scsi_dev_group,
   "scsi_dev", &target_stat_scsi_dev_cit);
 configfs_add_default_group(&dev->dev_stat_grps.scsi_dev_group,
   &dev->dev_stat_grps.stat_group);

 config_group_init_type_name(&dev->dev_stat_grps.scsi_tgt_dev_group,
   "scsi_tgt_dev", &target_stat_scsi_tgt_dev_cit);
 configfs_add_default_group(&dev->dev_stat_grps.scsi_tgt_dev_group,
   &dev->dev_stat_grps.stat_group);

 config_group_init_type_name(&dev->dev_stat_grps.scsi_lu_group,
   "scsi_lu", &target_stat_scsi_lu_cit);
 configfs_add_default_group(&dev->dev_stat_grps.scsi_lu_group,
   &dev->dev_stat_grps.stat_group);
}
