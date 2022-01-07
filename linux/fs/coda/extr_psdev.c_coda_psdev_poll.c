
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_comm {int vc_mutex; int vc_pending; int vc_waitq; } ;
struct file {scalar_t__ private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t coda_psdev_poll(struct file *file, poll_table * wait)
{
        struct venus_comm *vcp = (struct venus_comm *) file->private_data;
 __poll_t mask = EPOLLOUT | EPOLLWRNORM;

 poll_wait(file, &vcp->vc_waitq, wait);
 mutex_lock(&vcp->vc_mutex);
 if (!list_empty(&vcp->vc_pending))
                mask |= EPOLLIN | EPOLLRDNORM;
 mutex_unlock(&vcp->vc_mutex);

 return mask;
}
