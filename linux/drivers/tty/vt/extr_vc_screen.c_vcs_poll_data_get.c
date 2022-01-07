
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int notifier_call; } ;
struct vcs_poll_data {TYPE_1__ notifier; int event; int waitq; int cons_num; } ;
struct file {int f_lock; struct vcs_poll_data* private_data; } ;


 int GFP_KERNEL ;
 int VT_UPDATE ;
 int console (int ) ;
 int file_inode (struct file*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct vcs_poll_data*) ;
 struct vcs_poll_data* kzalloc (int,int ) ;
 scalar_t__ register_vt_notifier (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vcs_notifier ;
 int vcs_poll_data_free (struct vcs_poll_data*) ;

__attribute__((used)) static struct vcs_poll_data *
vcs_poll_data_get(struct file *file)
{
 struct vcs_poll_data *poll = file->private_data, *kill = ((void*)0);

 if (poll)
  return poll;

 poll = kzalloc(sizeof(*poll), GFP_KERNEL);
 if (!poll)
  return ((void*)0);
 poll->cons_num = console(file_inode(file));
 init_waitqueue_head(&poll->waitq);
 poll->notifier.notifier_call = vcs_notifier;







 poll->event = VT_UPDATE;

 if (register_vt_notifier(&poll->notifier) != 0) {
  kfree(poll);
  return ((void*)0);
 }
 spin_lock(&file->f_lock);
 if (!file->private_data) {
  file->private_data = poll;
 } else {

  kill = poll;
  poll = file->private_data;
 }
 spin_unlock(&file->f_lock);
 if (kill)
  vcs_poll_data_free(kill);

 return poll;
}
