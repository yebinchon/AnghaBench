
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_nodes_gone; } ;


 scalar_t__ find_memb (int *,int) ;

int dlm_is_removed(struct dlm_ls *ls, int nodeid)
{
 if (find_memb(&ls->ls_nodes_gone, nodeid))
  return 1;
 return 0;
}
