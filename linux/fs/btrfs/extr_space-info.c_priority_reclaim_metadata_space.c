
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct reserve_ticket {scalar_t__ bytes; } ;
struct btrfs_space_info {int lock; } ;
struct btrfs_fs_info {int dummy; } ;
typedef enum btrfs_flush_state { ____Placeholder_btrfs_flush_state } btrfs_flush_state ;


 int btrfs_calc_reclaim_metadata_size (struct btrfs_fs_info*,struct btrfs_space_info*,int) ;
 int flush_space (struct btrfs_fs_info*,struct btrfs_space_info*,int ,int const) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void priority_reclaim_metadata_space(struct btrfs_fs_info *fs_info,
    struct btrfs_space_info *space_info,
    struct reserve_ticket *ticket,
    const enum btrfs_flush_state *states,
    int states_nr)
{
 u64 to_reclaim;
 int flush_state;

 spin_lock(&space_info->lock);
 to_reclaim = btrfs_calc_reclaim_metadata_size(fs_info, space_info,
            0);
 if (!to_reclaim) {
  spin_unlock(&space_info->lock);
  return;
 }
 spin_unlock(&space_info->lock);

 flush_state = 0;
 do {
  flush_space(fs_info, space_info, to_reclaim, states[flush_state]);
  flush_state++;
  spin_lock(&space_info->lock);
  if (ticket->bytes == 0) {
   spin_unlock(&space_info->lock);
   return;
  }
  spin_unlock(&space_info->lock);
 } while (flush_state < states_nr);
}
