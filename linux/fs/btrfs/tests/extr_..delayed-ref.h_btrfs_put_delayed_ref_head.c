
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_delayed_ref_head {int refs; } ;


 int btrfs_delayed_ref_head_cachep ;
 int kmem_cache_free (int ,struct btrfs_delayed_ref_head*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static inline void btrfs_put_delayed_ref_head(struct btrfs_delayed_ref_head *head)
{
 if (refcount_dec_and_test(&head->refs))
  kmem_cache_free(btrfs_delayed_ref_head_cachep, head);
}
