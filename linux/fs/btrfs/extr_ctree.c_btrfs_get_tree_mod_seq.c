
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct seq_list {scalar_t__ seq; int list; } ;
struct btrfs_fs_info {int tree_mod_log_lock; int tree_mod_seq_lock; int tree_mod_seq_list; } ;


 scalar_t__ btrfs_inc_tree_mod_seq (struct btrfs_fs_info*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

u64 btrfs_get_tree_mod_seq(struct btrfs_fs_info *fs_info,
      struct seq_list *elem)
{
 write_lock(&fs_info->tree_mod_log_lock);
 spin_lock(&fs_info->tree_mod_seq_lock);
 if (!elem->seq) {
  elem->seq = btrfs_inc_tree_mod_seq(fs_info);
  list_add_tail(&elem->list, &fs_info->tree_mod_seq_list);
 }
 spin_unlock(&fs_info->tree_mod_seq_lock);
 write_unlock(&fs_info->tree_mod_log_lock);

 return elem->seq;
}
