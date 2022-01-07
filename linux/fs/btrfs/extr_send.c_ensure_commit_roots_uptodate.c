
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct send_ctx {int clone_roots_cnt; int send_root; TYPE_2__* clone_roots; TYPE_3__* parent_root; } ;
struct btrfs_trans_handle {int dummy; } ;
struct TYPE_6__ {scalar_t__ node; scalar_t__ commit_root; } ;
struct TYPE_5__ {TYPE_1__* root; } ;
struct TYPE_4__ {scalar_t__ node; scalar_t__ commit_root; } ;


 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 int btrfs_commit_transaction (struct btrfs_trans_handle*) ;
 int btrfs_end_transaction (struct btrfs_trans_handle*) ;
 struct btrfs_trans_handle* btrfs_join_transaction (int ) ;

__attribute__((used)) static int ensure_commit_roots_uptodate(struct send_ctx *sctx)
{
 int i;
 struct btrfs_trans_handle *trans = ((void*)0);

again:
 if (sctx->parent_root &&
     sctx->parent_root->node != sctx->parent_root->commit_root)
  goto commit_trans;

 for (i = 0; i < sctx->clone_roots_cnt; i++)
  if (sctx->clone_roots[i].root->node !=
      sctx->clone_roots[i].root->commit_root)
   goto commit_trans;

 if (trans)
  return btrfs_end_transaction(trans);

 return 0;

commit_trans:

 if (!trans) {
  trans = btrfs_join_transaction(sctx->send_root);
  if (IS_ERR(trans))
   return PTR_ERR(trans);
  goto again;
 }

 return btrfs_commit_transaction(trans);
}
