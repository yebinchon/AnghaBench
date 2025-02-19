
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_tg_pt_gp {int dummy; } ;
struct se_lun {int lun_tg_pt_gp_lock; struct t10_alua_tg_pt_gp* lun_tg_pt_gp; } ;


 int __target_detach_tg_pt_gp (struct se_lun*,struct t10_alua_tg_pt_gp*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void target_detach_tg_pt_gp(struct se_lun *lun)
{
 struct t10_alua_tg_pt_gp *tg_pt_gp;

 spin_lock(&lun->lun_tg_pt_gp_lock);
 tg_pt_gp = lun->lun_tg_pt_gp;
 if (tg_pt_gp)
  __target_detach_tg_pt_gp(lun, tg_pt_gp);
 spin_unlock(&lun->lun_tg_pt_gp_lock);
}
