
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct dlm_user_proc* private_data; } ;
struct dlm_user_proc {int wait; int locks_spin; int asts_spin; int unlocking; int locks; int asts; int lockspace; } ;
struct dlm_ls {int ls_local_handle; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 struct dlm_ls* dlm_find_lockspace_device (int ) ;
 int dlm_put_lockspace (struct dlm_ls*) ;
 int iminor (struct inode*) ;
 int init_waitqueue_head (int *) ;
 struct dlm_user_proc* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int device_open(struct inode *inode, struct file *file)
{
 struct dlm_user_proc *proc;
 struct dlm_ls *ls;

 ls = dlm_find_lockspace_device(iminor(inode));
 if (!ls)
  return -ENOENT;

 proc = kzalloc(sizeof(struct dlm_user_proc), GFP_NOFS);
 if (!proc) {
  dlm_put_lockspace(ls);
  return -ENOMEM;
 }

 proc->lockspace = ls->ls_local_handle;
 INIT_LIST_HEAD(&proc->asts);
 INIT_LIST_HEAD(&proc->locks);
 INIT_LIST_HEAD(&proc->unlocking);
 spin_lock_init(&proc->asts_spin);
 spin_lock_init(&proc->locks_spin);
 init_waitqueue_head(&proc->wait);
 file->private_data = proc;

 return 0;
}
