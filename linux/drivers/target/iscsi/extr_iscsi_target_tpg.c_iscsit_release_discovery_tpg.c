
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_portal_group {int tpg_se_tpg; int param_list; } ;
struct TYPE_2__ {struct iscsi_portal_group* discovery_tpg; } ;


 int core_tpg_deregister (int *) ;
 int iscsi_release_param_list (int ) ;
 TYPE_1__* iscsit_global ;
 int kfree (struct iscsi_portal_group*) ;

void iscsit_release_discovery_tpg(void)
{
 struct iscsi_portal_group *tpg = iscsit_global->discovery_tpg;

 if (!tpg)
  return;

 iscsi_release_param_list(tpg->param_list);
 core_tpg_deregister(&tpg->tpg_se_tpg);

 kfree(tpg);
 iscsit_global->discovery_tpg = ((void*)0);
}
