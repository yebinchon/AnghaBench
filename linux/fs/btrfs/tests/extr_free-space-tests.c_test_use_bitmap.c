
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_free_space_ctl {scalar_t__ free_extents; } ;
struct btrfs_free_space {int dummy; } ;



__attribute__((used)) static bool test_use_bitmap(struct btrfs_free_space_ctl *ctl,
       struct btrfs_free_space *info)
{
 return ctl->free_extents > 0;
}
