
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reada_control {int refcnt; int elems; int wait; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int reada_works_cnt; } ;


 int HZ ;
 scalar_t__ atomic_read (int *) ;
 int kref_put (int *,int ) ;
 int reada_control_release ;
 int reada_start_machine (struct btrfs_fs_info*) ;
 int wait_event_timeout (int ,int,int) ;

int btrfs_reada_wait(void *handle)
{
 struct reada_control *rc = handle;
 struct btrfs_fs_info *fs_info = rc->fs_info;

 while (atomic_read(&rc->elems)) {
  if (!atomic_read(&fs_info->reada_works_cnt))
   reada_start_machine(fs_info);
  wait_event_timeout(rc->wait, atomic_read(&rc->elems) == 0,
       (HZ + 9) / 10);
 }

 kref_put(&rc->refcnt, reada_control_release);

 return 0;
}
