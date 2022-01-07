
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {int log_mutex; int log_writers; } ;


 int atomic_inc (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void btrfs_pin_log_trans(struct btrfs_root *root)
{
 mutex_lock(&root->log_mutex);
 atomic_inc(&root->log_writers);
 mutex_unlock(&root->log_mutex);
}
