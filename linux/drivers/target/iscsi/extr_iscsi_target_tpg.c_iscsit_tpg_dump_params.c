
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_portal_group {int param_list; } ;


 int iscsi_print_params (int ) ;

void iscsit_tpg_dump_params(struct iscsi_portal_group *tpg)
{
 iscsi_print_params(tpg->param_list);
}
