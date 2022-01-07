
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_delayed_ref_root {int lock; } ;
struct btrfs_delayed_ref_head {int dummy; } ;


 struct btrfs_delayed_ref_head* find_ref_head (struct btrfs_delayed_ref_root*,int ,int) ;
 int lockdep_assert_held (int *) ;

struct btrfs_delayed_ref_head *
btrfs_find_delayed_ref_head(struct btrfs_delayed_ref_root *delayed_refs, u64 bytenr)
{
 lockdep_assert_held(&delayed_refs->lock);

 return find_ref_head(delayed_refs, bytenr, 0);
}
