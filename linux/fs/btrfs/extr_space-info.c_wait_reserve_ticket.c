
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reserve_ticket {scalar_t__ bytes; int wait; int error; int list; } ;
struct btrfs_space_info {int lock; } ;
struct btrfs_fs_info {int dummy; } ;


 int DEFINE_WAIT (int ) ;
 int EINTR ;
 int TASK_KILLABLE ;
 int finish_wait (int *,int *) ;
 int list_del_init (int *) ;
 int prepare_to_wait_event (int *,int *,int ) ;
 int schedule () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait ;

__attribute__((used)) static void wait_reserve_ticket(struct btrfs_fs_info *fs_info,
    struct btrfs_space_info *space_info,
    struct reserve_ticket *ticket)

{
 DEFINE_WAIT(wait);
 int ret = 0;

 spin_lock(&space_info->lock);
 while (ticket->bytes > 0 && ticket->error == 0) {
  ret = prepare_to_wait_event(&ticket->wait, &wait, TASK_KILLABLE);
  if (ret) {
   list_del_init(&ticket->list);
   ticket->error = -EINTR;
   break;
  }
  spin_unlock(&space_info->lock);

  schedule();

  finish_wait(&ticket->wait, &wait);
  spin_lock(&space_info->lock);
 }
 spin_unlock(&space_info->lock);
}
