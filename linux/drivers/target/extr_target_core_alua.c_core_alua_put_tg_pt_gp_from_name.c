
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct t10_alua_tg_pt_gp {int tg_pt_gp_ref_cnt; struct se_device* tg_pt_gp_dev; } ;
struct TYPE_2__ {int tg_pt_gps_lock; } ;
struct se_device {TYPE_1__ t10_alua; } ;


 int atomic_dec (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void core_alua_put_tg_pt_gp_from_name(
 struct t10_alua_tg_pt_gp *tg_pt_gp)
{
 struct se_device *dev = tg_pt_gp->tg_pt_gp_dev;

 spin_lock(&dev->t10_alua.tg_pt_gps_lock);
 atomic_dec(&tg_pt_gp->tg_pt_gp_ref_cnt);
 spin_unlock(&dev->t10_alua.tg_pt_gps_lock);
}
