
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_trans_handle {int transid; struct btrfs_fs_info* fs_info; int type; } ;
struct btrfs_fs_info {int dummy; } ;


 int __TRANS_DUMMY ;
 int memset (struct btrfs_trans_handle*,int ,int) ;

void btrfs_init_dummy_trans(struct btrfs_trans_handle *trans,
       struct btrfs_fs_info *fs_info)
{
 memset(trans, 0, sizeof(*trans));
 trans->transid = 1;
 trans->type = __TRANS_DUMMY;
 trans->fs_info = fs_info;
}
