
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ulist_node {int aux; int val; } ;
struct ulist_iterator {int dummy; } ;
struct inode {int dummy; } ;
struct extent_changeset {scalar_t__ bytes_changed; int range_changed; } ;
struct TYPE_4__ {int objectid; } ;
struct btrfs_root {TYPE_1__ root_key; TYPE_2__* fs_info; } ;
struct TYPE_6__ {int io_tree; struct btrfs_root* root; } ;
struct TYPE_5__ {int flags; } ;


 int BTRFS_FS_QUOTA_ENABLED ;
 TYPE_3__* BTRFS_I (struct inode*) ;
 int BTRFS_QGROUP_RSV_DATA ;
 int EINVAL ;
 int ENOMEM ;
 int EXTENT_QGROUP_RESERVED ;
 int QGROUP_RESERVE ;
 int ULIST_ITER_INIT (struct ulist_iterator*) ;
 scalar_t__ WARN_ON (int) ;
 int btrfs_qgroup_free_refroot (TYPE_2__*,int ,scalar_t__,int ) ;
 int clear_extent_bit (int *,int ,int ,int ,int ,int ,int *) ;
 struct extent_changeset* extent_changeset_alloc () ;
 int extent_changeset_release (struct extent_changeset*) ;
 int is_fstree (int ) ;
 int qgroup_reserve (struct btrfs_root*,scalar_t__,int,int ) ;
 int set_record_extent_bits (int *,scalar_t__,scalar_t__,int ,struct extent_changeset*) ;
 int test_bit (int ,int *) ;
 int trace_btrfs_qgroup_reserve_data (struct inode*,scalar_t__,scalar_t__,scalar_t__,int ) ;
 struct ulist_node* ulist_next (int *,struct ulist_iterator*) ;

int btrfs_qgroup_reserve_data(struct inode *inode,
   struct extent_changeset **reserved_ret, u64 start,
   u64 len)
{
 struct btrfs_root *root = BTRFS_I(inode)->root;
 struct ulist_node *unode;
 struct ulist_iterator uiter;
 struct extent_changeset *reserved;
 u64 orig_reserved;
 u64 to_reserve;
 int ret;

 if (!test_bit(BTRFS_FS_QUOTA_ENABLED, &root->fs_info->flags) ||
     !is_fstree(root->root_key.objectid) || len == 0)
  return 0;


 if (WARN_ON(!reserved_ret))
  return -EINVAL;
 if (!*reserved_ret) {
  *reserved_ret = extent_changeset_alloc();
  if (!*reserved_ret)
   return -ENOMEM;
 }
 reserved = *reserved_ret;

 orig_reserved = reserved->bytes_changed;
 ret = set_record_extent_bits(&BTRFS_I(inode)->io_tree, start,
   start + len -1, EXTENT_QGROUP_RESERVED, reserved);


 to_reserve = reserved->bytes_changed - orig_reserved;
 trace_btrfs_qgroup_reserve_data(inode, start, len,
     to_reserve, QGROUP_RESERVE);
 if (ret < 0)
  goto cleanup;
 ret = qgroup_reserve(root, to_reserve, 1, BTRFS_QGROUP_RSV_DATA);
 if (ret < 0)
  goto cleanup;

 return ret;

cleanup:

 ULIST_ITER_INIT(&uiter);
 while ((unode = ulist_next(&reserved->range_changed, &uiter)))
  clear_extent_bit(&BTRFS_I(inode)->io_tree, unode->val,
     unode->aux, EXTENT_QGROUP_RESERVED, 0, 0, ((void*)0));

 btrfs_qgroup_free_refroot(root->fs_info, root->root_key.objectid,
      orig_reserved, BTRFS_QGROUP_RSV_DATA);
 extent_changeset_release(reserved);
 return ret;
}
