
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_free_space_ctl {int tree_lock; } ;
struct btrfs_free_space {int offset_index; void* bytes; void* offset; } ;


 int ASSERT (int) ;
 int EEXIST ;
 int ENOMEM ;
 int GFP_NOFS ;
 int RB_CLEAR_NODE (int *) ;
 int btrfs_crit (struct btrfs_fs_info*,char*,int) ;
 int btrfs_free_space_cachep ;
 int insert_into_bitmap (struct btrfs_free_space_ctl*,struct btrfs_free_space*) ;
 int kmem_cache_free (int ,struct btrfs_free_space*) ;
 struct btrfs_free_space* kmem_cache_zalloc (int ,int ) ;
 int link_free_space (struct btrfs_free_space_ctl*,struct btrfs_free_space*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int steal_from_bitmap (struct btrfs_free_space_ctl*,struct btrfs_free_space*,int) ;
 scalar_t__ try_merge_free_space (struct btrfs_free_space_ctl*,struct btrfs_free_space*,int) ;

int __btrfs_add_free_space(struct btrfs_fs_info *fs_info,
      struct btrfs_free_space_ctl *ctl,
      u64 offset, u64 bytes)
{
 struct btrfs_free_space *info;
 int ret = 0;

 info = kmem_cache_zalloc(btrfs_free_space_cachep, GFP_NOFS);
 if (!info)
  return -ENOMEM;

 info->offset = offset;
 info->bytes = bytes;
 RB_CLEAR_NODE(&info->offset_index);

 spin_lock(&ctl->tree_lock);

 if (try_merge_free_space(ctl, info, 1))
  goto link;






 ret = insert_into_bitmap(ctl, info);
 if (ret < 0) {
  goto out;
 } else if (ret) {
  ret = 0;
  goto out;
 }
link:






 steal_from_bitmap(ctl, info, 1);

 ret = link_free_space(ctl, info);
 if (ret)
  kmem_cache_free(btrfs_free_space_cachep, info);
out:
 spin_unlock(&ctl->tree_lock);

 if (ret) {
  btrfs_crit(fs_info, "unable to add free space :%d", ret);
  ASSERT(ret != -EEXIST);
 }

 return ret;
}
