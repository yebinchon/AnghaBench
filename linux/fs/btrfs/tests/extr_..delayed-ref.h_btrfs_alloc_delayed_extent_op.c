
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_delayed_extent_op {int dummy; } ;


 int GFP_NOFS ;
 int btrfs_delayed_extent_op_cachep ;
 struct btrfs_delayed_extent_op* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static inline struct btrfs_delayed_extent_op *
btrfs_alloc_delayed_extent_op(void)
{
 return kmem_cache_alloc(btrfs_delayed_extent_op_cachep, GFP_NOFS);
}
