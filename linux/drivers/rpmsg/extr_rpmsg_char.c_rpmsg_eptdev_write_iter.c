
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmsg_eptdev {int ept_lock; int ept; } ;
struct kiocb {struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct file {int f_flags; struct rpmsg_eptdev* private_data; } ;
typedef int ssize_t ;


 int EFAULT ;
 int ENOMEM ;
 int EPIPE ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 int O_NONBLOCK ;
 int copy_from_iter_full (void*,size_t,struct iov_iter*) ;
 size_t iov_iter_count (struct iov_iter*) ;
 int kfree (void*) ;
 void* kzalloc (size_t,int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int rpmsg_send (int ,void*,size_t) ;
 int rpmsg_trysend (int ,void*,size_t) ;

__attribute__((used)) static ssize_t rpmsg_eptdev_write_iter(struct kiocb *iocb,
           struct iov_iter *from)
{
 struct file *filp = iocb->ki_filp;
 struct rpmsg_eptdev *eptdev = filp->private_data;
 size_t len = iov_iter_count(from);
 void *kbuf;
 int ret;

 kbuf = kzalloc(len, GFP_KERNEL);
 if (!kbuf)
  return -ENOMEM;

 if (!copy_from_iter_full(kbuf, len, from))
  return -EFAULT;

 if (mutex_lock_interruptible(&eptdev->ept_lock)) {
  ret = -ERESTARTSYS;
  goto free_kbuf;
 }

 if (!eptdev->ept) {
  ret = -EPIPE;
  goto unlock_eptdev;
 }

 if (filp->f_flags & O_NONBLOCK)
  ret = rpmsg_trysend(eptdev->ept, kbuf, len);
 else
  ret = rpmsg_send(eptdev->ept, kbuf, len);

unlock_eptdev:
 mutex_unlock(&eptdev->ept_lock);

free_kbuf:
 kfree(kbuf);
 return ret < 0 ? ret : len;
}
