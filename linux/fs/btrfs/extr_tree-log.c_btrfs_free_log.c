
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int * log_root; } ;


 int free_log_tree (struct btrfs_trans_handle*,int *) ;

int btrfs_free_log(struct btrfs_trans_handle *trans, struct btrfs_root *root)
{
 if (root->log_root) {
  free_log_tree(trans, root->log_root);
  root->log_root = ((void*)0);
 }
 return 0;
}
