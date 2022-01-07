
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stat_group; int scsi_att_intr_port_group; int scsi_auth_intr_group; } ;
struct se_lun_acl {TYPE_1__ ml_stat_grps; } ;


 int config_group_init_type_name (int *,char*,int *) ;
 int configfs_add_default_group (int *,int *) ;
 int target_stat_scsi_att_intr_port_cit ;
 int target_stat_scsi_auth_intr_cit ;

void target_stat_setup_mappedlun_default_groups(struct se_lun_acl *lacl)
{
 config_group_init_type_name(&lacl->ml_stat_grps.scsi_auth_intr_group,
   "scsi_auth_intr", &target_stat_scsi_auth_intr_cit);
 configfs_add_default_group(&lacl->ml_stat_grps.scsi_auth_intr_group,
   &lacl->ml_stat_grps.stat_group);

 config_group_init_type_name(&lacl->ml_stat_grps.scsi_att_intr_port_group,
   "scsi_att_intr_port", &target_stat_scsi_att_intr_port_cit);
 configfs_add_default_group(&lacl->ml_stat_grps.scsi_att_intr_port_group,
   &lacl->ml_stat_grps.stat_group);
}
