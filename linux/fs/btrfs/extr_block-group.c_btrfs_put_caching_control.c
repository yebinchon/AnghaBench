
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_caching_control {int count; } ;


 int kfree (struct btrfs_caching_control*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void btrfs_put_caching_control(struct btrfs_caching_control *ctl)
{
 if (refcount_dec_and_test(&ctl->count))
  kfree(ctl);
}
