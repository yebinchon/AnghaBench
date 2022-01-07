
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_fs_info {int tree_mod_seq; } ;


 int atomic64_inc_return (int *) ;

__attribute__((used)) static inline u64 btrfs_inc_tree_mod_seq(struct btrfs_fs_info *fs_info)
{
 return atomic64_inc_return(&fs_info->tree_mod_seq);
}
