
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_free_cluster {int fragmented; int * block_group; int block_group_list; scalar_t__ max_size; int root; int refill_lock; int lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT ;
 int spin_lock_init (int *) ;

void btrfs_init_free_cluster(struct btrfs_free_cluster *cluster)
{
 spin_lock_init(&cluster->lock);
 spin_lock_init(&cluster->refill_lock);
 cluster->root = RB_ROOT;
 cluster->max_size = 0;
 cluster->fragmented = 0;
 INIT_LIST_HEAD(&cluster->block_group_list);
 cluster->block_group = ((void*)0);
}
