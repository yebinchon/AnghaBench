
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_delayed_ref_node {int in_tree; int type; int refs; } ;






 int BUG () ;
 int WARN_ON (int) ;
 int btrfs_delayed_data_ref_cachep ;
 int btrfs_delayed_tree_ref_cachep ;
 int kmem_cache_free (int ,struct btrfs_delayed_ref_node*) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 scalar_t__ refcount_read (int *) ;

__attribute__((used)) static inline void btrfs_put_delayed_ref(struct btrfs_delayed_ref_node *ref)
{
 WARN_ON(refcount_read(&ref->refs) == 0);
 if (refcount_dec_and_test(&ref->refs)) {
  WARN_ON(ref->in_tree);
  switch (ref->type) {
  case 128:
  case 130:
   kmem_cache_free(btrfs_delayed_tree_ref_cachep, ref);
   break;
  case 131:
  case 129:
   kmem_cache_free(btrfs_delayed_data_ref_cachep, ref);
   break;
  default:
   BUG();
  }
 }
}
