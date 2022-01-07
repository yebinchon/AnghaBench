
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {int will_be_snapshotted; } ;


 int atomic_read (int *) ;
 int btrfs_start_write_no_snapshotting (struct btrfs_root*) ;
 int wait_var_event (int *,int) ;

void btrfs_wait_for_snapshot_creation(struct btrfs_root *root)
{
 while (1) {
  int ret;

  ret = btrfs_start_write_no_snapshotting(root);
  if (ret)
   break;
  wait_var_event(&root->will_be_snapshotted,
          !atomic_read(&root->will_be_snapshotted));
 }
}
