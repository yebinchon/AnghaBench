
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_portal_group {int tpg_lun_mutex; } ;
struct se_lun {int lun_shutdown; int lun_ref; int link; scalar_t__ lun_se_dev; int lun_dev_link; } ;
struct se_device {TYPE_1__* se_hba; int se_port_lock; int export_count; } ;
struct TYPE_2__ {int hba_flags; } ;


 int HBA_FLAGS_INTERNAL_USE ;
 int core_clear_lun_from_tpg (struct se_lun*,struct se_portal_group*) ;
 int hlist_del_rcu (int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int percpu_ref_exit (int *) ;
 int rcu_assign_pointer (scalar_t__,int *) ;
 struct se_device* rcu_dereference_raw (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int target_detach_tg_pt_gp (struct se_lun*) ;
 int transport_clear_lun_ref (struct se_lun*) ;

void core_tpg_remove_lun(
 struct se_portal_group *tpg,
 struct se_lun *lun)
{




 struct se_device *dev = rcu_dereference_raw(lun->lun_se_dev);

 lun->lun_shutdown = 1;

 core_clear_lun_from_tpg(lun, tpg);






 transport_clear_lun_ref(lun);

 mutex_lock(&tpg->tpg_lun_mutex);
 if (lun->lun_se_dev) {
  target_detach_tg_pt_gp(lun);

  spin_lock(&dev->se_port_lock);
  list_del(&lun->lun_dev_link);
  dev->export_count--;
  rcu_assign_pointer(lun->lun_se_dev, ((void*)0));
  spin_unlock(&dev->se_port_lock);
 }
 if (!(dev->se_hba->hba_flags & HBA_FLAGS_INTERNAL_USE))
  hlist_del_rcu(&lun->link);

 lun->lun_shutdown = 0;
 mutex_unlock(&tpg->tpg_lun_mutex);

 percpu_ref_exit(&lun->lun_ref);
}
