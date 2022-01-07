
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_lu_gp_member {scalar_t__ lu_gp_assoc; int * lu_gp; int lu_gp_mem_list; } ;
struct t10_alua_lu_gp {int lu_gp_lock; int lu_gp_members; } ;


 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void __core_alua_drop_lu_gp_mem(
 struct t10_alua_lu_gp_member *lu_gp_mem,
 struct t10_alua_lu_gp *lu_gp)
{
 spin_lock(&lu_gp->lu_gp_lock);
 list_del(&lu_gp_mem->lu_gp_mem_list);
 lu_gp_mem->lu_gp = ((void*)0);
 lu_gp_mem->lu_gp_assoc = 0;
 lu_gp->lu_gp_members--;
 spin_unlock(&lu_gp->lu_gp_lock);
}
