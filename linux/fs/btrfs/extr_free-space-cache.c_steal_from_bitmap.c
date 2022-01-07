
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_free_space_ctl {scalar_t__ total_bitmaps; } ;
struct btrfs_free_space {int offset_index; int bitmap; } ;


 int ASSERT (int) ;
 int RB_EMPTY_NODE (int *) ;
 int steal_from_bitmap_to_end (struct btrfs_free_space_ctl*,struct btrfs_free_space*,int) ;
 int steal_from_bitmap_to_front (struct btrfs_free_space_ctl*,struct btrfs_free_space*,int) ;
 int try_merge_free_space (struct btrfs_free_space_ctl*,struct btrfs_free_space*,int) ;

__attribute__((used)) static void steal_from_bitmap(struct btrfs_free_space_ctl *ctl,
         struct btrfs_free_space *info,
         bool update_stat)
{




 ASSERT(!info->bitmap);
 ASSERT(RB_EMPTY_NODE(&info->offset_index));

 if (ctl->total_bitmaps > 0) {
  bool stole_end;
  bool stole_front = 0;

  stole_end = steal_from_bitmap_to_end(ctl, info, update_stat);
  if (ctl->total_bitmaps > 0)
   stole_front = steal_from_bitmap_to_front(ctl, info,
         update_stat);

  if (stole_end || stole_front)
   try_merge_free_space(ctl, info, update_stat);
 }
}
