
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct timespec64 {int tv_nsec; int tv_sec; } ;
struct inode {int i_sb; } ;
struct file {int dummy; } ;
struct btrfs_trans_handle {int transid; } ;
struct btrfs_root_item {int rtime; int stime; int received_uuid; } ;
struct TYPE_8__ {int objectid; } ;
struct btrfs_root {TYPE_3__ root_key; struct btrfs_root_item root_item; } ;
struct TYPE_7__ {int nsec; int sec; } ;
struct TYPE_6__ {int nsec; int sec; } ;
struct btrfs_ioctl_received_subvol_args {int uuid; TYPE_2__ rtime; TYPE_1__ stime; int rtransid; int stransid; } ;
struct btrfs_fs_info {int subvol_sem; int tree_root; } ;
struct TYPE_9__ {struct btrfs_root* root; } ;


 scalar_t__ BTRFS_FIRST_FREE_OBJECTID ;
 TYPE_4__* BTRFS_I (struct inode*) ;
 int BTRFS_UUID_KEY_RECEIVED_SUBVOL ;
 int BTRFS_UUID_SIZE ;
 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 long EPERM ;
 int EROFS ;
 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 int btrfs_abort_transaction (struct btrfs_trans_handle*,int) ;
 int btrfs_commit_transaction (struct btrfs_trans_handle*) ;
 int btrfs_end_transaction (struct btrfs_trans_handle*) ;
 scalar_t__ btrfs_ino (TYPE_4__*) ;
 int btrfs_is_empty_uuid (int ) ;
 scalar_t__ btrfs_root_readonly (struct btrfs_root*) ;
 struct btrfs_fs_info* btrfs_sb (int ) ;
 int btrfs_set_root_rtransid (struct btrfs_root_item*,int ) ;
 int btrfs_set_root_stransid (struct btrfs_root_item*,int ) ;
 int btrfs_set_stack_timespec_nsec (int *,int ) ;
 int btrfs_set_stack_timespec_sec (int *,int ) ;
 struct btrfs_trans_handle* btrfs_start_transaction (struct btrfs_root*,int) ;
 int btrfs_update_root (struct btrfs_trans_handle*,int ,TYPE_3__*,struct btrfs_root_item*) ;
 int btrfs_uuid_tree_add (struct btrfs_trans_handle*,int ,int ,int ) ;
 int btrfs_uuid_tree_remove (struct btrfs_trans_handle*,int ,int ,int ) ;
 struct timespec64 current_time (struct inode*) ;
 int down_write (int *) ;
 struct inode* file_inode (struct file*) ;
 int inode_owner_or_capable (struct inode*) ;
 int memcmp (int ,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int mnt_drop_write_file (struct file*) ;
 int mnt_want_write_file (struct file*) ;
 int up_write (int *) ;

__attribute__((used)) static long _btrfs_ioctl_set_received_subvol(struct file *file,
         struct btrfs_ioctl_received_subvol_args *sa)
{
 struct inode *inode = file_inode(file);
 struct btrfs_fs_info *fs_info = btrfs_sb(inode->i_sb);
 struct btrfs_root *root = BTRFS_I(inode)->root;
 struct btrfs_root_item *root_item = &root->root_item;
 struct btrfs_trans_handle *trans;
 struct timespec64 ct = current_time(inode);
 int ret = 0;
 int received_uuid_changed;

 if (!inode_owner_or_capable(inode))
  return -EPERM;

 ret = mnt_want_write_file(file);
 if (ret < 0)
  return ret;

 down_write(&fs_info->subvol_sem);

 if (btrfs_ino(BTRFS_I(inode)) != BTRFS_FIRST_FREE_OBJECTID) {
  ret = -EINVAL;
  goto out;
 }

 if (btrfs_root_readonly(root)) {
  ret = -EROFS;
  goto out;
 }





 trans = btrfs_start_transaction(root, 3);
 if (IS_ERR(trans)) {
  ret = PTR_ERR(trans);
  trans = ((void*)0);
  goto out;
 }

 sa->rtransid = trans->transid;
 sa->rtime.sec = ct.tv_sec;
 sa->rtime.nsec = ct.tv_nsec;

 received_uuid_changed = memcmp(root_item->received_uuid, sa->uuid,
           BTRFS_UUID_SIZE);
 if (received_uuid_changed &&
     !btrfs_is_empty_uuid(root_item->received_uuid)) {
  ret = btrfs_uuid_tree_remove(trans, root_item->received_uuid,
       BTRFS_UUID_KEY_RECEIVED_SUBVOL,
       root->root_key.objectid);
  if (ret && ret != -ENOENT) {
          btrfs_abort_transaction(trans, ret);
          btrfs_end_transaction(trans);
          goto out;
  }
 }
 memcpy(root_item->received_uuid, sa->uuid, BTRFS_UUID_SIZE);
 btrfs_set_root_stransid(root_item, sa->stransid);
 btrfs_set_root_rtransid(root_item, sa->rtransid);
 btrfs_set_stack_timespec_sec(&root_item->stime, sa->stime.sec);
 btrfs_set_stack_timespec_nsec(&root_item->stime, sa->stime.nsec);
 btrfs_set_stack_timespec_sec(&root_item->rtime, sa->rtime.sec);
 btrfs_set_stack_timespec_nsec(&root_item->rtime, sa->rtime.nsec);

 ret = btrfs_update_root(trans, fs_info->tree_root,
    &root->root_key, &root->root_item);
 if (ret < 0) {
  btrfs_end_transaction(trans);
  goto out;
 }
 if (received_uuid_changed && !btrfs_is_empty_uuid(sa->uuid)) {
  ret = btrfs_uuid_tree_add(trans, sa->uuid,
       BTRFS_UUID_KEY_RECEIVED_SUBVOL,
       root->root_key.objectid);
  if (ret < 0 && ret != -EEXIST) {
   btrfs_abort_transaction(trans, ret);
   btrfs_end_transaction(trans);
   goto out;
  }
 }
 ret = btrfs_commit_transaction(trans);
out:
 up_write(&fs_info->subvol_sem);
 mnt_drop_write_file(file);
 return ret;
}
