
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_block_group_cache {int nocow_writers; } ;


 int atomic_read (int *) ;
 int wait_var_event (int *,int) ;

void btrfs_wait_nocow_writers(struct btrfs_block_group_cache *bg)
{
 wait_var_event(&bg->nocow_writers, !atomic_read(&bg->nocow_writers));
}
