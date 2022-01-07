
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct se_portal_group {int dummy; } ;
struct se_node_acl {int lun_entry_mutex; int lun_entry_hlist; int initiatorname; } ;
struct se_lun_acl {int lun_deve_lock; int lun_deve_list; } ;
struct se_lun {int lun_deve_lock; int lun_deve_list; } ;
struct se_dev_entry {int lun_access_ro; int lun_link; int link; int * se_lun_acl; int * se_lun; int pr_comp; int pr_kref; int attach_count; int creation_time; int mapped_lun; int ua_list; int ua_lock; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int get_jiffies_64 () ;
 int hlist_add_head_rcu (int *,int *) ;
 int hlist_del_rcu (int *) ;
 int init_completion (int *) ;
 int kfree (struct se_dev_entry*) ;
 int kfree_rcu (struct se_dev_entry*,int ) ;
 int kref_init (int *) ;
 int kref_put (int *,int ) ;
 struct se_dev_entry* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int lockdep_is_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,...) ;
 int pr_warn_ratelimited (char*,int ,int ) ;
 int rcu_assign_pointer (int *,struct se_lun_acl*) ;
 struct se_lun_acl* rcu_dereference_check (int *,int ) ;
 int rcu_head ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 int target_luns_data_has_changed (struct se_node_acl*,struct se_dev_entry*,int) ;
 struct se_dev_entry* target_nacl_find_deve (struct se_node_acl*,int ) ;
 int target_pr_kref_release ;
 int wait_for_completion (int *) ;

int core_enable_device_list_for_node(
 struct se_lun *lun,
 struct se_lun_acl *lun_acl,
 u64 mapped_lun,
 bool lun_access_ro,
 struct se_node_acl *nacl,
 struct se_portal_group *tpg)
{
 struct se_dev_entry *orig, *new;

 new = kzalloc(sizeof(*new), GFP_KERNEL);
 if (!new) {
  pr_err("Unable to allocate se_dev_entry memory\n");
  return -ENOMEM;
 }

 spin_lock_init(&new->ua_lock);
 INIT_LIST_HEAD(&new->ua_list);
 INIT_LIST_HEAD(&new->lun_link);

 new->mapped_lun = mapped_lun;
 kref_init(&new->pr_kref);
 init_completion(&new->pr_comp);

 new->lun_access_ro = lun_access_ro;
 new->creation_time = get_jiffies_64();
 new->attach_count++;

 mutex_lock(&nacl->lun_entry_mutex);
 orig = target_nacl_find_deve(nacl, mapped_lun);
 if (orig && orig->se_lun) {
  struct se_lun *orig_lun = rcu_dereference_check(orig->se_lun,
     lockdep_is_held(&nacl->lun_entry_mutex));

  if (orig_lun != lun) {
   pr_err("Existing orig->se_lun doesn't match new lun"
          " for dynamic -> explicit NodeACL conversion:"
    " %s\n", nacl->initiatorname);
   mutex_unlock(&nacl->lun_entry_mutex);
   kfree(new);
   return -EINVAL;
  }
  if (orig->se_lun_acl != ((void*)0)) {
   pr_warn_ratelimited("Detected existing explicit"
    " se_lun_acl->se_lun_group reference for %s"
    " mapped_lun: %llu, failing\n",
     nacl->initiatorname, mapped_lun);
   mutex_unlock(&nacl->lun_entry_mutex);
   kfree(new);
   return -EINVAL;
  }

  rcu_assign_pointer(new->se_lun, lun);
  rcu_assign_pointer(new->se_lun_acl, lun_acl);
  hlist_del_rcu(&orig->link);
  hlist_add_head_rcu(&new->link, &nacl->lun_entry_hlist);
  mutex_unlock(&nacl->lun_entry_mutex);

  spin_lock(&lun->lun_deve_lock);
  list_del(&orig->lun_link);
  list_add_tail(&new->lun_link, &lun->lun_deve_list);
  spin_unlock(&lun->lun_deve_lock);

  kref_put(&orig->pr_kref, target_pr_kref_release);
  wait_for_completion(&orig->pr_comp);

  target_luns_data_has_changed(nacl, new, 1);
  kfree_rcu(orig, rcu_head);
  return 0;
 }

 rcu_assign_pointer(new->se_lun, lun);
 rcu_assign_pointer(new->se_lun_acl, lun_acl);
 hlist_add_head_rcu(&new->link, &nacl->lun_entry_hlist);
 mutex_unlock(&nacl->lun_entry_mutex);

 spin_lock(&lun->lun_deve_lock);
 list_add_tail(&new->lun_link, &lun->lun_deve_list);
 spin_unlock(&lun->lun_deve_lock);

 target_luns_data_has_changed(nacl, new, 1);
 return 0;
}
