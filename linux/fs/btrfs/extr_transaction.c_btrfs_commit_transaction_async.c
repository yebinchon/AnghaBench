
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct btrfs_transaction {int use_count; } ;
struct btrfs_trans_handle {struct btrfs_transaction* transaction; int root; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int sb; } ;
struct btrfs_async_commit {int work; TYPE_2__* newtrans; } ;
struct TYPE_6__ {int type; } ;
struct TYPE_5__ {struct btrfs_trans_handle* journal_info; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 int PTR_ERR (TYPE_2__*) ;
 int SB_FREEZE_FS ;
 int __TRANS_FREEZABLE ;
 int __sb_writers_release (int ,int ) ;
 int btrfs_end_transaction (struct btrfs_trans_handle*) ;
 TYPE_2__* btrfs_join_transaction (int ) ;
 int btrfs_put_transaction (struct btrfs_transaction*) ;
 TYPE_1__* current ;
 int do_async_commit ;
 int kfree (struct btrfs_async_commit*) ;
 struct btrfs_async_commit* kmalloc (int,int ) ;
 int refcount_inc (int *) ;
 int schedule_work (int *) ;
 int wait_current_trans_commit_start (struct btrfs_fs_info*,struct btrfs_transaction*) ;
 int wait_current_trans_commit_start_and_unblock (struct btrfs_fs_info*,struct btrfs_transaction*) ;

int btrfs_commit_transaction_async(struct btrfs_trans_handle *trans,
       int wait_for_unblock)
{
 struct btrfs_fs_info *fs_info = trans->fs_info;
 struct btrfs_async_commit *ac;
 struct btrfs_transaction *cur_trans;

 ac = kmalloc(sizeof(*ac), GFP_NOFS);
 if (!ac)
  return -ENOMEM;

 INIT_WORK(&ac->work, do_async_commit);
 ac->newtrans = btrfs_join_transaction(trans->root);
 if (IS_ERR(ac->newtrans)) {
  int err = PTR_ERR(ac->newtrans);
  kfree(ac);
  return err;
 }


 cur_trans = trans->transaction;
 refcount_inc(&cur_trans->use_count);

 btrfs_end_transaction(trans);





 if (ac->newtrans->type & __TRANS_FREEZABLE)
  __sb_writers_release(fs_info->sb, SB_FREEZE_FS);

 schedule_work(&ac->work);


 if (wait_for_unblock)
  wait_current_trans_commit_start_and_unblock(fs_info, cur_trans);
 else
  wait_current_trans_commit_start(fs_info, cur_trans);

 if (current->journal_info == trans)
  current->journal_info = ((void*)0);

 btrfs_put_transaction(cur_trans);
 return 0;
}
