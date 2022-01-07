
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ulist_node {scalar_t__ val; scalar_t__ aux; } ;
struct ulist_iterator {int dummy; } ;
struct inode {int dummy; } ;
struct extent_changeset {scalar_t__ bytes_changed; int range_changed; } ;
struct TYPE_4__ {int objectid; } ;
struct btrfs_root {TYPE_1__ root_key; TYPE_2__* fs_info; } ;
struct TYPE_6__ {int io_tree; struct btrfs_root* root; } ;
struct TYPE_5__ {int sectorsize; } ;


 TYPE_3__* BTRFS_I (struct inode*) ;
 int BTRFS_QGROUP_RSV_DATA ;
 int EXTENT_QGROUP_RESERVED ;
 int ULIST_ITER_INIT (struct ulist_iterator*) ;
 int btrfs_qgroup_free_refroot (TYPE_2__*,int ,int,int ) ;
 int clear_record_extent_bits (int *,scalar_t__,scalar_t__,int ,struct extent_changeset*) ;
 int extent_changeset_init (struct extent_changeset*) ;
 int extent_changeset_release (struct extent_changeset*) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 scalar_t__ round_down (scalar_t__,int ) ;
 scalar_t__ round_up (scalar_t__,int ) ;
 struct ulist_node* ulist_next (int *,struct ulist_iterator*) ;

__attribute__((used)) static int qgroup_free_reserved_data(struct inode *inode,
   struct extent_changeset *reserved, u64 start, u64 len)
{
 struct btrfs_root *root = BTRFS_I(inode)->root;
 struct ulist_node *unode;
 struct ulist_iterator uiter;
 struct extent_changeset changeset;
 int freed = 0;
 int ret;

 extent_changeset_init(&changeset);
 len = round_up(start + len, root->fs_info->sectorsize);
 start = round_down(start, root->fs_info->sectorsize);

 ULIST_ITER_INIT(&uiter);
 while ((unode = ulist_next(&reserved->range_changed, &uiter))) {
  u64 range_start = unode->val;

  u64 range_len = unode->aux - range_start + 1;
  u64 free_start;
  u64 free_len;

  extent_changeset_release(&changeset);


  if (range_start >= start + len ||
      range_start + range_len <= start)
   continue;
  free_start = max(range_start, start);
  free_len = min(start + len, range_start + range_len) -
      free_start;
  ret = clear_record_extent_bits(&BTRFS_I(inode)->io_tree,
    free_start, free_start + free_len - 1,
    EXTENT_QGROUP_RESERVED, &changeset);
  if (ret < 0)
   goto out;
  freed += changeset.bytes_changed;
 }
 btrfs_qgroup_free_refroot(root->fs_info, root->root_key.objectid, freed,
      BTRFS_QGROUP_RSV_DATA);
 ret = freed;
out:
 extent_changeset_release(&changeset);
 return ret;
}
