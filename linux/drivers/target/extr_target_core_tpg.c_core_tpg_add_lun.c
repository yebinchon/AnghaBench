
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct se_portal_group {int tpg_lun_mutex; int tpg_lun_hlist; } ;
struct se_lun {int lun_access_ro; int lun_ref; int link; int lun_dev_link; int lun_se_dev; int lun_index; } ;
struct TYPE_5__ {int default_tg_pt_gp; } ;
struct se_device {int dev_flags; TYPE_3__* se_hba; int se_port_lock; int dev_sep_list; int export_count; int dev_index; TYPE_2__ t10_alua; TYPE_1__* transport; } ;
struct TYPE_6__ {int hba_flags; } ;
struct TYPE_4__ {int transport_flags; } ;


 int DF_READ_ONLY ;
 int GFP_KERNEL ;
 int HBA_FLAGS_INTERNAL_USE ;
 int TRANSPORT_FLAG_PASSTHROUGH_ALUA ;
 int core_alloc_rtpi (struct se_lun*,struct se_device*) ;
 int core_tpg_lun_ref_release ;
 int hlist_add_head_rcu (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int percpu_ref_exit (int *) ;
 int percpu_ref_init (int *,int ,int ,int ) ;
 int rcu_assign_pointer (int ,struct se_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int target_attach_tg_pt_gp (struct se_lun*,int ) ;

int core_tpg_add_lun(
 struct se_portal_group *tpg,
 struct se_lun *lun,
 bool lun_access_ro,
 struct se_device *dev)
{
 int ret;

 ret = percpu_ref_init(&lun->lun_ref, core_tpg_lun_ref_release, 0,
         GFP_KERNEL);
 if (ret < 0)
  goto out;

 ret = core_alloc_rtpi(lun, dev);
 if (ret)
  goto out_kill_ref;

 if (!(dev->transport->transport_flags &
      TRANSPORT_FLAG_PASSTHROUGH_ALUA) &&
     !(dev->se_hba->hba_flags & HBA_FLAGS_INTERNAL_USE))
  target_attach_tg_pt_gp(lun, dev->t10_alua.default_tg_pt_gp);

 mutex_lock(&tpg->tpg_lun_mutex);

 spin_lock(&dev->se_port_lock);
 lun->lun_index = dev->dev_index;
 rcu_assign_pointer(lun->lun_se_dev, dev);
 dev->export_count++;
 list_add_tail(&lun->lun_dev_link, &dev->dev_sep_list);
 spin_unlock(&dev->se_port_lock);

 if (dev->dev_flags & DF_READ_ONLY)
  lun->lun_access_ro = 1;
 else
  lun->lun_access_ro = lun_access_ro;
 if (!(dev->se_hba->hba_flags & HBA_FLAGS_INTERNAL_USE))
  hlist_add_head_rcu(&lun->link, &tpg->tpg_lun_hlist);
 mutex_unlock(&tpg->tpg_lun_mutex);

 return 0;

out_kill_ref:
 percpu_ref_exit(&lun->lun_ref);
out:
 return ret;
}
