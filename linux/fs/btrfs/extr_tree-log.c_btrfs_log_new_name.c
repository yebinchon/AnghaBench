
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct btrfs_trans_handle {int transid; struct btrfs_fs_info* fs_info; } ;
struct btrfs_log_ctx {int dummy; } ;
struct TYPE_2__ {int i_mode; } ;
struct btrfs_inode {scalar_t__ logged_trans; int root; TYPE_1__ vfs_inode; int last_unlink_trans; } ;
struct btrfs_fs_info {scalar_t__ last_trans_committed; } ;


 int ASSERT (struct btrfs_log_ctx*) ;
 int BTRFS_DONT_NEED_LOG_SYNC ;
 int BTRFS_DONT_NEED_TRANS_COMMIT ;
 int BTRFS_NEED_LOG_SYNC ;
 int BTRFS_NEED_TRANS_COMMIT ;
 int BTRFS_NO_LOG_SYNC ;
 int LLONG_MAX ;
 int LOG_INODE_EXISTS ;
 int S_ISDIR (int ) ;
 int btrfs_init_log_ctx (struct btrfs_log_ctx*,TYPE_1__*) ;
 int btrfs_log_inode_parent (struct btrfs_trans_handle*,struct btrfs_inode*,struct dentry*,int ,int ,int ,struct btrfs_log_ctx*) ;
 int btrfs_sync_log (struct btrfs_trans_handle*,int ,struct btrfs_log_ctx*) ;

int btrfs_log_new_name(struct btrfs_trans_handle *trans,
   struct btrfs_inode *inode, struct btrfs_inode *old_dir,
   struct dentry *parent,
   bool sync_log, struct btrfs_log_ctx *ctx)
{
 struct btrfs_fs_info *fs_info = trans->fs_info;
 int ret;





 if (!S_ISDIR(inode->vfs_inode.i_mode))
  inode->last_unlink_trans = trans->transid;





 if (inode->logged_trans <= fs_info->last_trans_committed &&
     (!old_dir || old_dir->logged_trans <= fs_info->last_trans_committed))
  return sync_log ? BTRFS_DONT_NEED_TRANS_COMMIT :
   BTRFS_DONT_NEED_LOG_SYNC;

 if (sync_log) {
  struct btrfs_log_ctx ctx2;

  btrfs_init_log_ctx(&ctx2, &inode->vfs_inode);
  ret = btrfs_log_inode_parent(trans, inode, parent, 0, LLONG_MAX,
          LOG_INODE_EXISTS, &ctx2);
  if (ret == BTRFS_NO_LOG_SYNC)
   return BTRFS_DONT_NEED_TRANS_COMMIT;
  else if (ret)
   return BTRFS_NEED_TRANS_COMMIT;

  ret = btrfs_sync_log(trans, inode->root, &ctx2);
  if (ret)
   return BTRFS_NEED_TRANS_COMMIT;
  return BTRFS_DONT_NEED_TRANS_COMMIT;
 }

 ASSERT(ctx);
 ret = btrfs_log_inode_parent(trans, inode, parent, 0, LLONG_MAX,
         LOG_INODE_EXISTS, ctx);
 if (ret == BTRFS_NO_LOG_SYNC)
  return BTRFS_DONT_NEED_LOG_SYNC;
 else if (ret)
  return BTRFS_NEED_TRANS_COMMIT;

 return BTRFS_NEED_LOG_SYNC;
}
