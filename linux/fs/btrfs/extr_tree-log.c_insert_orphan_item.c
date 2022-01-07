
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;


 int EEXIST ;
 int btrfs_insert_orphan_item (struct btrfs_trans_handle*,struct btrfs_root*,int ) ;

__attribute__((used)) static int insert_orphan_item(struct btrfs_trans_handle *trans,
         struct btrfs_root *root, u64 ino)
{
 int ret;

 ret = btrfs_insert_orphan_item(trans, root, ino);
 if (ret == -EEXIST)
  ret = 0;

 return ret;
}
