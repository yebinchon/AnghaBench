
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_lu_gp {int lu_gp_ref_cnt; } ;


 int atomic_dec (int *) ;
 int lu_gps_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void core_alua_put_lu_gp_from_name(struct t10_alua_lu_gp *lu_gp)
{
 spin_lock(&lu_gps_lock);
 atomic_dec(&lu_gp->lu_gp_ref_cnt);
 spin_unlock(&lu_gps_lock);
}
