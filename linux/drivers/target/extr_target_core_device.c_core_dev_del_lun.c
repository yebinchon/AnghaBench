
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_portal_group {TYPE_1__* se_tpg_tfo; } ;
struct se_lun {int unpacked_lun; } ;
struct TYPE_2__ {int fabric_name; int (* tpg_get_tag ) (struct se_portal_group*) ;} ;


 int core_tpg_remove_lun (struct se_portal_group*,struct se_lun*) ;
 int pr_debug (char*,int ,int ,int ,int ) ;
 int stub1 (struct se_portal_group*) ;

void core_dev_del_lun(
 struct se_portal_group *tpg,
 struct se_lun *lun)
{
 pr_debug("%s_TPG[%u]_LUN[%llu] - Deactivating %s Logical Unit from"
  " device object\n", tpg->se_tpg_tfo->fabric_name,
  tpg->se_tpg_tfo->tpg_get_tag(tpg), lun->unpacked_lun,
  tpg->se_tpg_tfo->fabric_name);

 core_tpg_remove_lun(tpg, lun);
}
