
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_portal_group {int dummy; } ;
struct se_node_acl {int lun_entry_mutex; } ;
struct se_lun {int lun_deve_lock; int lun_se_dev; } ;
struct se_device {int dummy; } ;
struct se_dev_entry {int lun_access_ro; int se_lun_acl; int se_lun; int pr_comp; int pr_kref; int attach_count; scalar_t__ creation_time; int deve_flags; int link; int lun_link; } ;


 int DEF_PR_REG_ACTIVE ;
 int clear_bit (int ,int *) ;
 int core_scsi3_free_pr_reg_from_nacl (struct se_device*,struct se_node_acl*) ;
 int core_scsi3_ua_release_all (struct se_dev_entry*) ;
 int hlist_del_rcu (int *) ;
 int kfree_rcu (struct se_dev_entry*,int ) ;
 int kref_put (int *,int ) ;
 int list_del (int *) ;
 int lockdep_assert_held (int *) ;
 int rcu_assign_pointer (int ,int *) ;
 struct se_device* rcu_dereference_raw (int ) ;
 int rcu_head ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int target_luns_data_has_changed (struct se_node_acl*,int *,int) ;
 int target_pr_kref_release ;
 int wait_for_completion (int *) ;

void core_disable_device_list_for_node(
 struct se_lun *lun,
 struct se_dev_entry *orig,
 struct se_node_acl *nacl,
 struct se_portal_group *tpg)
{




 struct se_device *dev = rcu_dereference_raw(lun->lun_se_dev);

 lockdep_assert_held(&nacl->lun_entry_mutex);
 spin_lock(&lun->lun_deve_lock);
 list_del(&orig->lun_link);
 spin_unlock(&lun->lun_deve_lock);



 core_scsi3_ua_release_all(orig);

 hlist_del_rcu(&orig->link);
 clear_bit(DEF_PR_REG_ACTIVE, &orig->deve_flags);
 orig->lun_access_ro = 0;
 orig->creation_time = 0;
 orig->attach_count--;




 kref_put(&orig->pr_kref, target_pr_kref_release);
 wait_for_completion(&orig->pr_comp);

 rcu_assign_pointer(orig->se_lun, ((void*)0));
 rcu_assign_pointer(orig->se_lun_acl, ((void*)0));

 kfree_rcu(orig, rcu_head);

 core_scsi3_free_pr_reg_from_nacl(dev, nacl);
 target_luns_data_has_changed(nacl, ((void*)0), 0);
}
