
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int objectid; } ;
struct btrfs_root {scalar_t__ send_in_progress; int root_item_lock; TYPE_1__ root_key; int fs_info; } ;


 int btrfs_err (int ,char*,scalar_t__,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void btrfs_root_dec_send_in_progress(struct btrfs_root* root)
{
 spin_lock(&root->root_item_lock);
 root->send_in_progress--;




 if (root->send_in_progress < 0)
  btrfs_err(root->fs_info,
     "send_in_progress unbalanced %d root %llu",
     root->send_in_progress, root->root_key.objectid);
 spin_unlock(&root->root_item_lock);
}
