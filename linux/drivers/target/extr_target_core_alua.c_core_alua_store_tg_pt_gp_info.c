
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int cg_item; } ;
struct t10_alua_tg_pt_gp {int tg_pt_gp_id; TYPE_6__ tg_pt_gp_group; } ;
struct se_portal_group {TYPE_4__* se_tpg_tfo; } ;
struct TYPE_11__ {int cg_item; } ;
struct se_lun {TYPE_5__ lun_group; int lun_tg_pt_gp_lock; struct t10_alua_tg_pt_gp* lun_tg_pt_gp; int lun_se_dev; struct se_portal_group* lun_tpg; } ;
struct TYPE_9__ {struct t10_alua_tg_pt_gp* default_tg_pt_gp; } ;
struct se_device {TYPE_3__ t10_alua; TYPE_2__* se_hba; TYPE_1__* transport; } ;
typedef size_t ssize_t ;
struct TYPE_10__ {int (* tpg_get_tag ) (struct se_portal_group*) ;int (* tpg_get_wwn ) (struct se_portal_group*) ;} ;
struct TYPE_8__ {int hba_flags; } ;
struct TYPE_7__ {int transport_flags; } ;


 size_t EINVAL ;
 size_t ENODEV ;
 int HBA_FLAGS_INTERNAL_USE ;
 int TG_PT_GROUP_NAME_BUF ;
 int TRANSPORT_FLAG_PASSTHROUGH_ALUA ;
 int __target_attach_tg_pt_gp (struct se_lun*,struct t10_alua_tg_pt_gp*) ;
 int __target_detach_tg_pt_gp (struct se_lun*,struct t10_alua_tg_pt_gp*) ;
 int config_item_name (int *) ;
 struct t10_alua_tg_pt_gp* core_alua_get_tg_pt_gp_by_name (struct se_device*,int ) ;
 int core_alua_put_tg_pt_gp_from_name (struct t10_alua_tg_pt_gp*) ;
 int memcpy (unsigned char*,char const*,size_t) ;
 int memset (unsigned char*,int ,int) ;
 int pr_debug (char*,char*,int ,int ,int ,int ,...) ;
 int pr_err (char*) ;
 struct se_device* rcu_dereference_raw (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ strcmp (int ,char*) ;
 int strstrip (unsigned char*) ;
 int stub1 (struct se_portal_group*) ;
 int stub2 (struct se_portal_group*) ;
 int stub3 (struct se_portal_group*) ;
 int stub4 (struct se_portal_group*) ;

ssize_t core_alua_store_tg_pt_gp_info(
 struct se_lun *lun,
 const char *page,
 size_t count)
{
 struct se_portal_group *tpg = lun->lun_tpg;




 struct se_device *dev = rcu_dereference_raw(lun->lun_se_dev);
 struct t10_alua_tg_pt_gp *tg_pt_gp = ((void*)0), *tg_pt_gp_new = ((void*)0);
 unsigned char buf[TG_PT_GROUP_NAME_BUF];
 int move = 0;

 if (dev->transport->transport_flags & TRANSPORT_FLAG_PASSTHROUGH_ALUA ||
     (dev->se_hba->hba_flags & HBA_FLAGS_INTERNAL_USE))
  return -ENODEV;

 if (count > TG_PT_GROUP_NAME_BUF) {
  pr_err("ALUA Target Port Group alias too large!\n");
  return -EINVAL;
 }
 memset(buf, 0, TG_PT_GROUP_NAME_BUF);
 memcpy(buf, page, count);




 if (strcmp(strstrip(buf), "NULL")) {





  tg_pt_gp_new = core_alua_get_tg_pt_gp_by_name(dev,
     strstrip(buf));
  if (!tg_pt_gp_new)
   return -ENODEV;
 }

 spin_lock(&lun->lun_tg_pt_gp_lock);
 tg_pt_gp = lun->lun_tg_pt_gp;
 if (tg_pt_gp) {




  if (!tg_pt_gp_new) {
   pr_debug("Target_Core_ConfigFS: Moving"
    " %s/tpgt_%hu/%s from ALUA Target Port Group:"
    " alua/%s, ID: %hu back to"
    " default_tg_pt_gp\n",
    tpg->se_tpg_tfo->tpg_get_wwn(tpg),
    tpg->se_tpg_tfo->tpg_get_tag(tpg),
    config_item_name(&lun->lun_group.cg_item),
    config_item_name(
     &tg_pt_gp->tg_pt_gp_group.cg_item),
    tg_pt_gp->tg_pt_gp_id);

   __target_detach_tg_pt_gp(lun, tg_pt_gp);
   __target_attach_tg_pt_gp(lun,
     dev->t10_alua.default_tg_pt_gp);
   spin_unlock(&lun->lun_tg_pt_gp_lock);

   return count;
  }
  __target_detach_tg_pt_gp(lun, tg_pt_gp);
  move = 1;
 }

 __target_attach_tg_pt_gp(lun, tg_pt_gp_new);
 spin_unlock(&lun->lun_tg_pt_gp_lock);
 pr_debug("Target_Core_ConfigFS: %s %s/tpgt_%hu/%s to ALUA"
  " Target Port Group: alua/%s, ID: %hu\n", (move) ?
  "Moving" : "Adding", tpg->se_tpg_tfo->tpg_get_wwn(tpg),
  tpg->se_tpg_tfo->tpg_get_tag(tpg),
  config_item_name(&lun->lun_group.cg_item),
  config_item_name(&tg_pt_gp_new->tg_pt_gp_group.cg_item),
  tg_pt_gp_new->tg_pt_gp_id);

 core_alua_put_tg_pt_gp_from_name(tg_pt_gp_new);
 return count;
}
