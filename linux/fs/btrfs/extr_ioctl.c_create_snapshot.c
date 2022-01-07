
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct inode {int transid; TYPE_2__* transaction; int i_sb; } ;
struct dentry {int d_parent; } ;
struct btrfs_trans_handle {int transid; TYPE_2__* transaction; int i_sb; } ;
struct btrfs_root_item {int dummy; } ;
struct btrfs_root {int will_be_snapshotted; int snapshot_force_cow; TYPE_1__* subv_writers; int nr_swapfiles; int state; } ;
struct btrfs_qgroup_inherit {int dummy; } ;
struct btrfs_pending_snapshot {int readonly; int error; int path; struct btrfs_pending_snapshot* root_item; int block_rsv; int snap; int list; struct btrfs_qgroup_inherit* inherit; struct inode* dir; struct btrfs_root* root; struct dentry* dentry; } ;
struct btrfs_fs_info {int trans_lock; } ;
struct TYPE_6__ {int root; } ;
struct TYPE_5__ {int pending_snapshots; } ;
struct TYPE_4__ {int counter; int wait; } ;


 int BTRFS_BLOCK_RSV_TEMP ;
 TYPE_3__* BTRFS_I (struct inode*) ;
 int BTRFS_ROOT_REF_COWS ;
 int EINVAL ;
 int ENOMEM ;
 int ETXTBSY ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int U64_MAX ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int btrfs_alloc_path () ;
 int btrfs_commit_transaction (struct inode*) ;
 int btrfs_commit_transaction_async (struct inode*,int) ;
 int btrfs_free_path (int ) ;
 int btrfs_init_block_rsv (int *,int ) ;
 struct inode* btrfs_lookup_dentry (int ,struct dentry*) ;
 int btrfs_orphan_cleanup (int ) ;
 struct btrfs_fs_info* btrfs_sb (int ) ;
 int btrfs_start_delalloc_snapshot (struct btrfs_root*) ;
 struct inode* btrfs_start_transaction (struct btrfs_root*,int ) ;
 int btrfs_subvolume_release_metadata (struct btrfs_fs_info*,int *) ;
 int btrfs_subvolume_reserve_metadata (int ,int *,int,int) ;
 int btrfs_wait_ordered_extents (struct btrfs_root*,int ,int ,int ) ;
 int btrfs_warn (struct btrfs_fs_info*,char*) ;
 int d_inode (int ) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int kfree (struct btrfs_pending_snapshot*) ;
 void* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 scalar_t__ percpu_counter_sum (int *) ;
 int smp_mb__after_atomic () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int *) ;
 int wait_event (int ,int) ;
 int wake_up_var (int *) ;

__attribute__((used)) static int create_snapshot(struct btrfs_root *root, struct inode *dir,
      struct dentry *dentry,
      u64 *async_transid, bool readonly,
      struct btrfs_qgroup_inherit *inherit)
{
 struct btrfs_fs_info *fs_info = btrfs_sb(dir->i_sb);
 struct inode *inode;
 struct btrfs_pending_snapshot *pending_snapshot;
 struct btrfs_trans_handle *trans;
 int ret;
 bool snapshot_force_cow = 0;

 if (!test_bit(BTRFS_ROOT_REF_COWS, &root->state))
  return -EINVAL;

 if (atomic_read(&root->nr_swapfiles)) {
  btrfs_warn(fs_info,
      "cannot snapshot subvolume with active swapfile");
  return -ETXTBSY;
 }

 pending_snapshot = kzalloc(sizeof(*pending_snapshot), GFP_KERNEL);
 if (!pending_snapshot)
  return -ENOMEM;

 pending_snapshot->root_item = kzalloc(sizeof(struct btrfs_root_item),
   GFP_KERNEL);
 pending_snapshot->path = btrfs_alloc_path();
 if (!pending_snapshot->root_item || !pending_snapshot->path) {
  ret = -ENOMEM;
  goto free_pending;
 }






 atomic_inc(&root->will_be_snapshotted);
 smp_mb__after_atomic();

 wait_event(root->subv_writers->wait,
     percpu_counter_sum(&root->subv_writers->counter) == 0);

 ret = btrfs_start_delalloc_snapshot(root);
 if (ret)
  goto dec_and_free;






 atomic_inc(&root->snapshot_force_cow);
 snapshot_force_cow = 1;

 btrfs_wait_ordered_extents(root, U64_MAX, 0, (u64)-1);

 btrfs_init_block_rsv(&pending_snapshot->block_rsv,
        BTRFS_BLOCK_RSV_TEMP);
 ret = btrfs_subvolume_reserve_metadata(BTRFS_I(dir)->root,
     &pending_snapshot->block_rsv, 8,
     0);
 if (ret)
  goto dec_and_free;

 pending_snapshot->dentry = dentry;
 pending_snapshot->root = root;
 pending_snapshot->readonly = readonly;
 pending_snapshot->dir = dir;
 pending_snapshot->inherit = inherit;

 trans = btrfs_start_transaction(root, 0);
 if (IS_ERR(trans)) {
  ret = PTR_ERR(trans);
  goto fail;
 }

 spin_lock(&fs_info->trans_lock);
 list_add(&pending_snapshot->list,
   &trans->transaction->pending_snapshots);
 spin_unlock(&fs_info->trans_lock);
 if (async_transid) {
  *async_transid = trans->transid;
  ret = btrfs_commit_transaction_async(trans, 1);
  if (ret)
   ret = btrfs_commit_transaction(trans);
 } else {
  ret = btrfs_commit_transaction(trans);
 }
 if (ret)
  goto fail;

 ret = pending_snapshot->error;
 if (ret)
  goto fail;

 ret = btrfs_orphan_cleanup(pending_snapshot->snap);
 if (ret)
  goto fail;

 inode = btrfs_lookup_dentry(d_inode(dentry->d_parent), dentry);
 if (IS_ERR(inode)) {
  ret = PTR_ERR(inode);
  goto fail;
 }

 d_instantiate(dentry, inode);
 ret = 0;
fail:
 btrfs_subvolume_release_metadata(fs_info, &pending_snapshot->block_rsv);
dec_and_free:
 if (snapshot_force_cow)
  atomic_dec(&root->snapshot_force_cow);
 if (atomic_dec_and_test(&root->will_be_snapshotted))
  wake_up_var(&root->will_be_snapshotted);
free_pending:
 kfree(pending_snapshot->root_item);
 btrfs_free_path(pending_snapshot->path);
 kfree(pending_snapshot);

 return ret;
}
