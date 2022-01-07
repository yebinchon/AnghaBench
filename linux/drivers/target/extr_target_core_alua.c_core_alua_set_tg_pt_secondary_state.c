
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cg_item; } ;
struct t10_alua_tg_pt_gp {int tg_pt_gp_trans_delay_msecs; int tg_pt_gp_id; TYPE_1__ tg_pt_gp_group; } ;
struct se_lun {scalar_t__ lun_tg_pt_secondary_write_md; int lun_tg_pt_gp_lock; int lun_tg_pt_secondary_stat; int lun_tg_pt_secondary_offline; struct t10_alua_tg_pt_gp* lun_tg_pt_gp; } ;


 int ALUA_STATUS_ALTERED_BY_EXPLICIT_STPG ;
 int ALUA_STATUS_ALTERED_BY_IMPLICIT_ALUA ;
 int EINVAL ;
 int atomic_set (int *,int) ;
 int config_item_name (int *) ;
 int core_alua_update_tpg_secondary_metadata (struct se_lun*) ;
 int msleep_interruptible (int) ;
 int pr_debug (char*,char*,int ,int ,char*) ;
 int pr_err (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int core_alua_set_tg_pt_secondary_state(
 struct se_lun *lun,
 int explicit,
 int offline)
{
 struct t10_alua_tg_pt_gp *tg_pt_gp;
 int trans_delay_msecs;

 spin_lock(&lun->lun_tg_pt_gp_lock);
 tg_pt_gp = lun->lun_tg_pt_gp;
 if (!tg_pt_gp) {
  spin_unlock(&lun->lun_tg_pt_gp_lock);
  pr_err("Unable to complete secondary state"
    " transition\n");
  return -EINVAL;
 }
 trans_delay_msecs = tg_pt_gp->tg_pt_gp_trans_delay_msecs;




 if (offline)
  atomic_set(&lun->lun_tg_pt_secondary_offline, 1);
 else
  atomic_set(&lun->lun_tg_pt_secondary_offline, 0);

 lun->lun_tg_pt_secondary_stat = (explicit) ?
   ALUA_STATUS_ALTERED_BY_EXPLICIT_STPG :
   ALUA_STATUS_ALTERED_BY_IMPLICIT_ALUA;

 pr_debug("Successful %s ALUA transition TG PT Group: %s ID: %hu"
  " to secondary access state: %s\n", (explicit) ? "explicit" :
  "implicit", config_item_name(&tg_pt_gp->tg_pt_gp_group.cg_item),
  tg_pt_gp->tg_pt_gp_id, (offline) ? "OFFLINE" : "ONLINE");

 spin_unlock(&lun->lun_tg_pt_gp_lock);




 if (trans_delay_msecs != 0)
  msleep_interruptible(trans_delay_msecs);




 if (lun->lun_tg_pt_secondary_write_md)
  core_alua_update_tpg_secondary_metadata(lun);

 return 0;
}
