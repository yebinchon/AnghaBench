
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct inode_defrag {scalar_t__ root; scalar_t__ ino; } ;
struct btrfs_fs_info {int transaction_wait; int defrag_running; int fs_state; } ;


 int BTRFS_FS_STATE_REMOUNTING ;
 int __btrfs_run_defrag_inode (struct btrfs_fs_info*,struct inode_defrag*) ;
 int __need_auto_defrag (struct btrfs_fs_info*) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 struct inode_defrag* btrfs_pick_defrag_inode (struct btrfs_fs_info*,scalar_t__,scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up (int *) ;

int btrfs_run_defrag_inodes(struct btrfs_fs_info *fs_info)
{
 struct inode_defrag *defrag;
 u64 first_ino = 0;
 u64 root_objectid = 0;

 atomic_inc(&fs_info->defrag_running);
 while (1) {

  if (test_bit(BTRFS_FS_STATE_REMOUNTING,
        &fs_info->fs_state))
   break;

  if (!__need_auto_defrag(fs_info))
   break;


  defrag = btrfs_pick_defrag_inode(fs_info, root_objectid,
       first_ino);
  if (!defrag) {
   if (root_objectid || first_ino) {
    root_objectid = 0;
    first_ino = 0;
    continue;
   } else {
    break;
   }
  }

  first_ino = defrag->ino + 1;
  root_objectid = defrag->root;

  __btrfs_run_defrag_inode(fs_info, defrag);
 }
 atomic_dec(&fs_info->defrag_running);





 wake_up(&fs_info->transaction_wait);
 return 0;
}
