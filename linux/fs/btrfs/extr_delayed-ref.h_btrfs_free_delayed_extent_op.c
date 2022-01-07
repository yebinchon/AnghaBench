
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_delayed_extent_op {int dummy; } ;


 int btrfs_delayed_extent_op_cachep ;
 int kmem_cache_free (int ,struct btrfs_delayed_extent_op*) ;

__attribute__((used)) static inline void
btrfs_free_delayed_extent_op(struct btrfs_delayed_extent_op *op)
{
 if (op)
  kmem_cache_free(btrfs_delayed_extent_op_cachep, op);
}
