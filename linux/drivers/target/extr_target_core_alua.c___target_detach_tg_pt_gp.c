
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_tg_pt_gp {int tg_pt_gp_lock; int tg_pt_gp_members; } ;
struct se_lun {int * lun_tg_pt_gp; int lun_tg_pt_gp_link; int lun_tg_pt_gp_lock; } ;


 int assert_spin_locked (int *) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void __target_detach_tg_pt_gp(struct se_lun *lun,
  struct t10_alua_tg_pt_gp *tg_pt_gp)
{
 assert_spin_locked(&lun->lun_tg_pt_gp_lock);

 spin_lock(&tg_pt_gp->tg_pt_gp_lock);
 list_del_init(&lun->lun_tg_pt_gp_link);
 tg_pt_gp->tg_pt_gp_members--;
 spin_unlock(&tg_pt_gp->tg_pt_gp_lock);

 lun->lun_tg_pt_gp = ((void*)0);
}
