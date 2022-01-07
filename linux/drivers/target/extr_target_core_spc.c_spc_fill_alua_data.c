
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_tg_pt_gp {unsigned char tg_pt_gp_alua_access_type; } ;
struct se_lun {int lun_tg_pt_gp_lock; struct t10_alua_tg_pt_gp* lun_tg_pt_gp; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void spc_fill_alua_data(struct se_lun *lun, unsigned char *buf)
{
 struct t10_alua_tg_pt_gp *tg_pt_gp;




 buf[5] = 0x80;







 spin_lock(&lun->lun_tg_pt_gp_lock);
 tg_pt_gp = lun->lun_tg_pt_gp;
 if (tg_pt_gp)
  buf[5] |= tg_pt_gp->tg_pt_gp_alua_access_type;
 spin_unlock(&lun->lun_tg_pt_gp_lock);
}
