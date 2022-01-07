
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int free_space_root; int chunk_root; int uuid_root; int quota_root; int csum_root; int extent_root; int dev_root; int tree_root; } ;


 int free_root_extent_buffers (int ) ;

__attribute__((used)) static void free_root_pointers(struct btrfs_fs_info *info, int chunk_root)
{
 free_root_extent_buffers(info->tree_root);

 free_root_extent_buffers(info->dev_root);
 free_root_extent_buffers(info->extent_root);
 free_root_extent_buffers(info->csum_root);
 free_root_extent_buffers(info->quota_root);
 free_root_extent_buffers(info->uuid_root);
 if (chunk_root)
  free_root_extent_buffers(info->chunk_root);
 free_root_extent_buffers(info->free_space_root);
}
