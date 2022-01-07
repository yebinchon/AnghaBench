
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_subvolume_writers {int counter; } ;


 int kfree (struct btrfs_subvolume_writers*) ;
 int percpu_counter_destroy (int *) ;

__attribute__((used)) static void
btrfs_free_subvolume_writers(struct btrfs_subvolume_writers *writers)
{
 percpu_counter_destroy(&writers->counter);
 kfree(writers);
}
