
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wait; } ;
struct switchtec_user {scalar_t__ event_cnt; TYPE_1__ comp; struct switchtec_dev* stdev; } ;
struct switchtec_dev {int event_cnt; int mrpc_mutex; int event_wq; } ;
struct file {struct switchtec_user* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLPRI ;
 int EPOLLRDBAND ;
 int EPOLLRDHUP ;
 int EPOLLRDNORM ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ lock_mutex_and_test_alive (struct switchtec_dev*) ;
 int mutex_unlock (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 scalar_t__ try_wait_for_completion (TYPE_1__*) ;

__attribute__((used)) static __poll_t switchtec_dev_poll(struct file *filp, poll_table *wait)
{
 struct switchtec_user *stuser = filp->private_data;
 struct switchtec_dev *stdev = stuser->stdev;
 __poll_t ret = 0;

 poll_wait(filp, &stuser->comp.wait, wait);
 poll_wait(filp, &stdev->event_wq, wait);

 if (lock_mutex_and_test_alive(stdev))
  return EPOLLIN | EPOLLRDHUP | EPOLLOUT | EPOLLERR | EPOLLHUP;

 mutex_unlock(&stdev->mrpc_mutex);

 if (try_wait_for_completion(&stuser->comp))
  ret |= EPOLLIN | EPOLLRDNORM;

 if (stuser->event_cnt != atomic_read(&stdev->event_cnt))
  ret |= EPOLLPRI | EPOLLRDBAND;

 return ret;
}
