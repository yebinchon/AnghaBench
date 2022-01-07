
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {int log_writer_wait; int log_writers; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int cond_wake_up_nomb (int *) ;

void btrfs_end_log_trans(struct btrfs_root *root)
{
 if (atomic_dec_and_test(&root->log_writers)) {

  cond_wake_up_nomb(&root->log_writer_wait);
 }
}
