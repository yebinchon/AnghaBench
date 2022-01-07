
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vhost_dev {int * mm; struct task_struct* worker; } ;
struct task_struct {int dummy; } ;
struct TYPE_3__ {int pid; } ;


 int EBUSY ;
 scalar_t__ IS_ERR (struct task_struct*) ;
 int PTR_ERR (struct task_struct*) ;
 TYPE_1__* current ;
 int * get_task_mm (TYPE_1__*) ;
 struct task_struct* kthread_create (int ,struct vhost_dev*,char*,int ) ;
 int kthread_stop (struct task_struct*) ;
 int mmput (int *) ;
 int vhost_attach_cgroups (struct vhost_dev*) ;
 int vhost_dev_alloc_iovecs (struct vhost_dev*) ;
 scalar_t__ vhost_dev_has_owner (struct vhost_dev*) ;
 int vhost_worker ;
 int wake_up_process (struct task_struct*) ;

long vhost_dev_set_owner(struct vhost_dev *dev)
{
 struct task_struct *worker;
 int err;


 if (vhost_dev_has_owner(dev)) {
  err = -EBUSY;
  goto err_mm;
 }


 dev->mm = get_task_mm(current);
 worker = kthread_create(vhost_worker, dev, "vhost-%d", current->pid);
 if (IS_ERR(worker)) {
  err = PTR_ERR(worker);
  goto err_worker;
 }

 dev->worker = worker;
 wake_up_process(worker);

 err = vhost_attach_cgroups(dev);
 if (err)
  goto err_cgroup;

 err = vhost_dev_alloc_iovecs(dev);
 if (err)
  goto err_cgroup;

 return 0;
err_cgroup:
 kthread_stop(worker);
 dev->worker = ((void*)0);
err_worker:
 if (dev->mm)
  mmput(dev->mm);
 dev->mm = ((void*)0);
err_mm:
 return err;
}
