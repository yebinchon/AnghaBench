
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reada_extent {int refcnt; } ;
struct extent_buffer {int start; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int reada_lock; int reada_tree; } ;


 int PAGE_SHIFT ;
 int __readahead_hook (struct btrfs_fs_info*,struct reada_extent*,struct extent_buffer*,int) ;
 struct reada_extent* radix_tree_lookup (int *,int) ;
 int reada_extent_put (struct btrfs_fs_info*,struct reada_extent*) ;
 int reada_start_machine (struct btrfs_fs_info*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int btree_readahead_hook(struct extent_buffer *eb, int err)
{
 struct btrfs_fs_info *fs_info = eb->fs_info;
 int ret = 0;
 struct reada_extent *re;


 spin_lock(&fs_info->reada_lock);
 re = radix_tree_lookup(&fs_info->reada_tree,
          eb->start >> PAGE_SHIFT);
 if (re)
  re->refcnt++;
 spin_unlock(&fs_info->reada_lock);
 if (!re) {
  ret = -1;
  goto start_machine;
 }

 __readahead_hook(fs_info, re, eb, err);
 reada_extent_put(fs_info, re);

start_machine:
 reada_start_machine(fs_info);
 return ret;
}
