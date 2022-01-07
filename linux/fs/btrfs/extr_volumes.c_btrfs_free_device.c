
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_device {int flush_bio; int alloc_state; int name; int post_commit_list; } ;


 int WARN_ON (int) ;
 int bio_put (int ) ;
 int extent_io_tree_release (int *) ;
 int kfree (struct btrfs_device*) ;
 int list_empty (int *) ;
 int rcu_string_free (int ) ;

void btrfs_free_device(struct btrfs_device *device)
{
 WARN_ON(!list_empty(&device->post_commit_list));
 rcu_string_free(device->name);
 extent_io_tree_release(&device->alloc_state);
 bio_put(device->flush_bio);
 kfree(device);
}
