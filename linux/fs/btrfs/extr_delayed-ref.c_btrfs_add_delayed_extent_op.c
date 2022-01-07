
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct btrfs_trans_handle {TYPE_1__* transaction; } ;
struct btrfs_delayed_ref_root {int lock; } ;
struct btrfs_delayed_ref_head {struct btrfs_delayed_extent_op* extent_op; } ;
struct btrfs_delayed_extent_op {int is_data; } ;
struct TYPE_2__ {struct btrfs_delayed_ref_root delayed_refs; } ;


 int BTRFS_UPDATE_DELAYED_HEAD ;
 int ENOMEM ;
 int GFP_NOFS ;
 int add_delayed_ref_head (struct btrfs_trans_handle*,struct btrfs_delayed_ref_head*,int *,int ,int *,int *,int *) ;
 int btrfs_delayed_ref_head_cachep ;
 int btrfs_update_delayed_refs_rsv (struct btrfs_trans_handle*) ;
 int init_delayed_ref_head (struct btrfs_delayed_ref_head*,int *,int ,int ,int ,int ,int ,int ,int) ;
 struct btrfs_delayed_ref_head* kmem_cache_alloc (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int btrfs_add_delayed_extent_op(struct btrfs_trans_handle *trans,
    u64 bytenr, u64 num_bytes,
    struct btrfs_delayed_extent_op *extent_op)
{
 struct btrfs_delayed_ref_head *head_ref;
 struct btrfs_delayed_ref_root *delayed_refs;

 head_ref = kmem_cache_alloc(btrfs_delayed_ref_head_cachep, GFP_NOFS);
 if (!head_ref)
  return -ENOMEM;

 init_delayed_ref_head(head_ref, ((void*)0), bytenr, num_bytes, 0, 0,
         BTRFS_UPDATE_DELAYED_HEAD, extent_op->is_data,
         0);
 head_ref->extent_op = extent_op;

 delayed_refs = &trans->transaction->delayed_refs;
 spin_lock(&delayed_refs->lock);

 add_delayed_ref_head(trans, head_ref, ((void*)0), BTRFS_UPDATE_DELAYED_HEAD,
        ((void*)0), ((void*)0), ((void*)0));

 spin_unlock(&delayed_refs->lock);





 btrfs_update_delayed_refs_rsv(trans);
 return 0;
}
