
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_backend {int dummy; } ;


 int target_core_setup_dev_action_cit (struct target_backend*) ;
 int target_core_setup_dev_alua_tg_pt_gps_cit (struct target_backend*) ;
 int target_core_setup_dev_attrib_cit (struct target_backend*) ;
 int target_core_setup_dev_cit (struct target_backend*) ;
 int target_core_setup_dev_pr_cit (struct target_backend*) ;
 int target_core_setup_dev_stat_cit (struct target_backend*) ;
 int target_core_setup_dev_wwn_cit (struct target_backend*) ;

void target_setup_backend_cits(struct target_backend *tb)
{
 target_core_setup_dev_cit(tb);
 target_core_setup_dev_action_cit(tb);
 target_core_setup_dev_attrib_cit(tb);
 target_core_setup_dev_pr_cit(tb);
 target_core_setup_dev_wwn_cit(tb);
 target_core_setup_dev_alua_tg_pt_gps_cit(tb);
 target_core_setup_dev_stat_cit(tb);
}
