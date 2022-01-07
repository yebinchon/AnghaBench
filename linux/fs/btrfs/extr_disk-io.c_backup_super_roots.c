
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct btrfs_root_backup {int dummy; } ;
struct btrfs_fs_info {int backup_root_index; TYPE_7__* super_for_commit; TYPE_8__* super_copy; TYPE_6__* csum_root; TYPE_5__* dev_root; TYPE_4__* fs_root; TYPE_3__* extent_root; TYPE_2__* chunk_root; TYPE_1__* tree_root; } ;
struct TYPE_21__ {int super_roots; } ;
struct TYPE_20__ {struct btrfs_root_backup* super_roots; } ;
struct TYPE_19__ {TYPE_11__* node; } ;
struct TYPE_18__ {TYPE_11__* node; } ;
struct TYPE_17__ {TYPE_11__* node; } ;
struct TYPE_16__ {TYPE_11__* node; } ;
struct TYPE_15__ {TYPE_11__* node; } ;
struct TYPE_14__ {TYPE_11__* node; } ;
struct TYPE_13__ {int start; } ;


 int BTRFS_NUM_BACKUP_ROOTS ;
 scalar_t__ btrfs_backup_tree_root_gen (struct btrfs_root_backup*) ;
 scalar_t__ btrfs_header_generation (TYPE_11__*) ;
 int btrfs_header_level (TYPE_11__*) ;
 int btrfs_set_backup_bytes_used (struct btrfs_root_backup*,int ) ;
 int btrfs_set_backup_chunk_root (struct btrfs_root_backup*,int ) ;
 int btrfs_set_backup_chunk_root_gen (struct btrfs_root_backup*,scalar_t__) ;
 int btrfs_set_backup_chunk_root_level (struct btrfs_root_backup*,int ) ;
 int btrfs_set_backup_csum_root (struct btrfs_root_backup*,int ) ;
 int btrfs_set_backup_csum_root_gen (struct btrfs_root_backup*,scalar_t__) ;
 int btrfs_set_backup_csum_root_level (struct btrfs_root_backup*,int ) ;
 int btrfs_set_backup_dev_root (struct btrfs_root_backup*,int ) ;
 int btrfs_set_backup_dev_root_gen (struct btrfs_root_backup*,scalar_t__) ;
 int btrfs_set_backup_dev_root_level (struct btrfs_root_backup*,int ) ;
 int btrfs_set_backup_extent_root (struct btrfs_root_backup*,int ) ;
 int btrfs_set_backup_extent_root_gen (struct btrfs_root_backup*,scalar_t__) ;
 int btrfs_set_backup_extent_root_level (struct btrfs_root_backup*,int ) ;
 int btrfs_set_backup_fs_root (struct btrfs_root_backup*,int ) ;
 int btrfs_set_backup_fs_root_gen (struct btrfs_root_backup*,scalar_t__) ;
 int btrfs_set_backup_fs_root_level (struct btrfs_root_backup*,int ) ;
 int btrfs_set_backup_num_devices (struct btrfs_root_backup*,int ) ;
 int btrfs_set_backup_total_bytes (struct btrfs_root_backup*,int ) ;
 int btrfs_set_backup_tree_root (struct btrfs_root_backup*,int ) ;
 int btrfs_set_backup_tree_root_gen (struct btrfs_root_backup*,scalar_t__) ;
 int btrfs_set_backup_tree_root_level (struct btrfs_root_backup*,int ) ;
 int btrfs_super_bytes_used (TYPE_8__*) ;
 int btrfs_super_num_devices (TYPE_8__*) ;
 int btrfs_super_total_bytes (TYPE_8__*) ;
 int memcpy (int *,struct btrfs_root_backup**,int) ;
 int memset (struct btrfs_root_backup*,int ,int) ;

__attribute__((used)) static void backup_super_roots(struct btrfs_fs_info *info)
{
 int next_backup;
 struct btrfs_root_backup *root_backup;
 int last_backup;

 next_backup = info->backup_root_index;
 last_backup = (next_backup + BTRFS_NUM_BACKUP_ROOTS - 1) %
  BTRFS_NUM_BACKUP_ROOTS;





 root_backup = info->super_for_commit->super_roots + last_backup;
 if (btrfs_backup_tree_root_gen(root_backup) ==
     btrfs_header_generation(info->tree_root->node))
  next_backup = last_backup;

 root_backup = info->super_for_commit->super_roots + next_backup;





 memset(root_backup, 0, sizeof(*root_backup));

 info->backup_root_index = (next_backup + 1) % BTRFS_NUM_BACKUP_ROOTS;

 btrfs_set_backup_tree_root(root_backup, info->tree_root->node->start);
 btrfs_set_backup_tree_root_gen(root_backup,
          btrfs_header_generation(info->tree_root->node));

 btrfs_set_backup_tree_root_level(root_backup,
          btrfs_header_level(info->tree_root->node));

 btrfs_set_backup_chunk_root(root_backup, info->chunk_root->node->start);
 btrfs_set_backup_chunk_root_gen(root_backup,
          btrfs_header_generation(info->chunk_root->node));
 btrfs_set_backup_chunk_root_level(root_backup,
          btrfs_header_level(info->chunk_root->node));

 btrfs_set_backup_extent_root(root_backup, info->extent_root->node->start);
 btrfs_set_backup_extent_root_gen(root_backup,
          btrfs_header_generation(info->extent_root->node));
 btrfs_set_backup_extent_root_level(root_backup,
          btrfs_header_level(info->extent_root->node));





 if (info->fs_root && info->fs_root->node) {
  btrfs_set_backup_fs_root(root_backup,
      info->fs_root->node->start);
  btrfs_set_backup_fs_root_gen(root_backup,
          btrfs_header_generation(info->fs_root->node));
  btrfs_set_backup_fs_root_level(root_backup,
          btrfs_header_level(info->fs_root->node));
 }

 btrfs_set_backup_dev_root(root_backup, info->dev_root->node->start);
 btrfs_set_backup_dev_root_gen(root_backup,
          btrfs_header_generation(info->dev_root->node));
 btrfs_set_backup_dev_root_level(root_backup,
           btrfs_header_level(info->dev_root->node));

 btrfs_set_backup_csum_root(root_backup, info->csum_root->node->start);
 btrfs_set_backup_csum_root_gen(root_backup,
          btrfs_header_generation(info->csum_root->node));
 btrfs_set_backup_csum_root_level(root_backup,
          btrfs_header_level(info->csum_root->node));

 btrfs_set_backup_total_bytes(root_backup,
        btrfs_super_total_bytes(info->super_copy));
 btrfs_set_backup_bytes_used(root_backup,
        btrfs_super_bytes_used(info->super_copy));
 btrfs_set_backup_num_devices(root_backup,
        btrfs_super_num_devices(info->super_copy));





 memcpy(&info->super_copy->super_roots,
        &info->super_for_commit->super_roots,
        sizeof(*root_backup) * BTRFS_NUM_BACKUP_ROOTS);
}
