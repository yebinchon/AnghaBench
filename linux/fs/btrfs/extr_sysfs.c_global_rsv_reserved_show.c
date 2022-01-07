
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int parent; } ;
struct kobj_attribute {int dummy; } ;
struct btrfs_block_rsv {int lock; int reserved; } ;
struct btrfs_fs_info {struct btrfs_block_rsv global_block_rsv; } ;
typedef int ssize_t ;


 int btrfs_show_u64 (int *,int *,char*) ;
 struct btrfs_fs_info* to_fs_info (int ) ;

__attribute__((used)) static ssize_t global_rsv_reserved_show(struct kobject *kobj,
     struct kobj_attribute *a, char *buf)
{
 struct btrfs_fs_info *fs_info = to_fs_info(kobj->parent);
 struct btrfs_block_rsv *block_rsv = &fs_info->global_block_rsv;
 return btrfs_show_u64(&block_rsv->reserved, &block_rsv->lock, buf);
}
