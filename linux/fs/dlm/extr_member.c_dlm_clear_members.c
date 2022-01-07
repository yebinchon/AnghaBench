
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {scalar_t__ ls_num_nodes; int ls_nodes; } ;


 int clear_memb_list (int *) ;

void dlm_clear_members(struct dlm_ls *ls)
{
 clear_memb_list(&ls->ls_nodes);
 ls->ls_num_nodes = 0;
}
