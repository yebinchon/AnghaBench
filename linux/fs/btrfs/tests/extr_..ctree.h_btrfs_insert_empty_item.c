
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {int dummy; } ;


 int btrfs_insert_empty_items (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct btrfs_key const*,int *,int) ;

__attribute__((used)) static inline int btrfs_insert_empty_item(struct btrfs_trans_handle *trans,
       struct btrfs_root *root,
       struct btrfs_path *path,
       const struct btrfs_key *key,
       u32 data_size)
{
 return btrfs_insert_empty_items(trans, root, path, key, &data_size, 1);
}
