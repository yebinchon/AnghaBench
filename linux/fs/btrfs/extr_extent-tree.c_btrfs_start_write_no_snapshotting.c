
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_root {int will_be_snapshotted; TYPE_1__* subv_writers; } ;
struct TYPE_2__ {int counter; } ;


 scalar_t__ atomic_read (int *) ;
 int btrfs_end_write_no_snapshotting (struct btrfs_root*) ;
 int percpu_counter_inc (int *) ;
 int smp_mb () ;

int btrfs_start_write_no_snapshotting(struct btrfs_root *root)
{
 if (atomic_read(&root->will_be_snapshotted))
  return 0;

 percpu_counter_inc(&root->subv_writers->counter);



 smp_mb();
 if (atomic_read(&root->will_be_snapshotted)) {
  btrfs_end_write_no_snapshotting(root);
  return 0;
 }
 return 1;
}
