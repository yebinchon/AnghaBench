
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_block_rsv {scalar_t__ reserved; scalar_t__ size; int full; int space_info; int lock; } ;
struct btrfs_fs_info {struct btrfs_block_rsv delayed_refs_rsv; } ;


 int btrfs_space_info_free_bytes_may_use (struct btrfs_fs_info*,int ,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_btrfs_space_reservation (struct btrfs_fs_info*,char*,int ,scalar_t__,int) ;

void btrfs_migrate_to_delayed_refs_rsv(struct btrfs_fs_info *fs_info,
           struct btrfs_block_rsv *src,
           u64 num_bytes)
{
 struct btrfs_block_rsv *delayed_refs_rsv = &fs_info->delayed_refs_rsv;
 u64 to_free = 0;

 spin_lock(&src->lock);
 src->reserved -= num_bytes;
 src->size -= num_bytes;
 spin_unlock(&src->lock);

 spin_lock(&delayed_refs_rsv->lock);
 if (delayed_refs_rsv->size > delayed_refs_rsv->reserved) {
  u64 delta = delayed_refs_rsv->size -
   delayed_refs_rsv->reserved;
  if (num_bytes > delta) {
   to_free = num_bytes - delta;
   num_bytes = delta;
  }
 } else {
  to_free = num_bytes;
  num_bytes = 0;
 }

 if (num_bytes)
  delayed_refs_rsv->reserved += num_bytes;
 if (delayed_refs_rsv->reserved >= delayed_refs_rsv->size)
  delayed_refs_rsv->full = 1;
 spin_unlock(&delayed_refs_rsv->lock);

 if (num_bytes)
  trace_btrfs_space_reservation(fs_info, "delayed_refs_rsv",
           0, num_bytes, 1);
 if (to_free)
  btrfs_space_info_free_bytes_may_use(fs_info,
    delayed_refs_rsv->space_info, to_free);
}
