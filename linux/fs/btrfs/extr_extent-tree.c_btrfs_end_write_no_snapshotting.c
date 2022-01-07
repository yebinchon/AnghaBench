
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_root {TYPE_1__* subv_writers; } ;
struct TYPE_2__ {int wait; int counter; } ;


 int cond_wake_up (int *) ;
 int percpu_counter_dec (int *) ;

void btrfs_end_write_no_snapshotting(struct btrfs_root *root)
{
 percpu_counter_dec(&root->subv_writers->counter);
 cond_wake_up(&root->subv_writers->wait);
}
