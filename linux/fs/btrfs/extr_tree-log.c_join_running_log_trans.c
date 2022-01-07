
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {int log_mutex; int log_writers; scalar_t__ log_root; } ;


 int ENOENT ;
 int atomic_inc (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int join_running_log_trans(struct btrfs_root *root)
{
 int ret = -ENOENT;

 mutex_lock(&root->log_mutex);
 if (root->log_root) {
  ret = 0;
  atomic_inc(&root->log_writers);
 }
 mutex_unlock(&root->log_mutex);
 return ret;
}
