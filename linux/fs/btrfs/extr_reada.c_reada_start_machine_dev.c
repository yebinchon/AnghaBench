
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct reada_extent {int logical; int scheduled; int nzones; TYPE_2__** zones; int lock; int extctl; int refcnt; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_fs_info {int nodesize; int reada_lock; } ;
struct btrfs_device {int reada_next; int reada_in_flight; int reada_extents; TYPE_1__* reada_curr_zone; struct btrfs_fs_info* fs_info; } ;
struct TYPE_4__ {struct btrfs_device* device; } ;
struct TYPE_3__ {int end; } ;


 int PAGE_SHIFT ;
 int __readahead_hook (struct btrfs_fs_info*,struct reada_extent*,struct extent_buffer*,int) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int free_extent_buffer (struct extent_buffer*) ;
 scalar_t__ list_empty (int *) ;
 int radix_tree_gang_lookup (int *,void**,int,int) ;
 int reada_extent_put (struct btrfs_fs_info*,struct reada_extent*) ;
 int reada_pick_zone (struct btrfs_device*) ;
 int reada_tree_block_flagged (struct btrfs_fs_info*,int,int,struct extent_buffer**) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int reada_start_machine_dev(struct btrfs_device *dev)
{
 struct btrfs_fs_info *fs_info = dev->fs_info;
 struct reada_extent *re = ((void*)0);
 int mirror_num = 0;
 struct extent_buffer *eb = ((void*)0);
 u64 logical;
 int ret;
 int i;

 spin_lock(&fs_info->reada_lock);
 if (dev->reada_curr_zone == ((void*)0)) {
  ret = reada_pick_zone(dev);
  if (!ret) {
   spin_unlock(&fs_info->reada_lock);
   return 0;
  }
 }





 ret = radix_tree_gang_lookup(&dev->reada_extents, (void **)&re,
         dev->reada_next >> PAGE_SHIFT, 1);
 if (ret == 0 || re->logical > dev->reada_curr_zone->end) {
  ret = reada_pick_zone(dev);
  if (!ret) {
   spin_unlock(&fs_info->reada_lock);
   return 0;
  }
  re = ((void*)0);
  ret = radix_tree_gang_lookup(&dev->reada_extents, (void **)&re,
     dev->reada_next >> PAGE_SHIFT, 1);
 }
 if (ret == 0) {
  spin_unlock(&fs_info->reada_lock);
  return 0;
 }
 dev->reada_next = re->logical + fs_info->nodesize;
 re->refcnt++;

 spin_unlock(&fs_info->reada_lock);

 spin_lock(&re->lock);
 if (re->scheduled || list_empty(&re->extctl)) {
  spin_unlock(&re->lock);
  reada_extent_put(fs_info, re);
  return 0;
 }
 re->scheduled = 1;
 spin_unlock(&re->lock);




 for (i = 0; i < re->nzones; ++i) {
  if (re->zones[i]->device == dev) {
   mirror_num = i + 1;
   break;
  }
 }
 logical = re->logical;

 atomic_inc(&dev->reada_in_flight);
 ret = reada_tree_block_flagged(fs_info, logical, mirror_num, &eb);
 if (ret)
  __readahead_hook(fs_info, re, ((void*)0), ret);
 else if (eb)
  __readahead_hook(fs_info, re, eb, ret);

 if (eb)
  free_extent_buffer(eb);

 atomic_dec(&dev->reada_in_flight);
 reada_extent_put(fs_info, re);

 return 1;

}
