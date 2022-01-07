
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmsg_eptdev {int ept; int queue; int readq; } ;
struct file {struct rpmsg_eptdev* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLIN ;
 int EPOLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;
 int rpmsg_poll (int ,struct file*,int *) ;
 int skb_queue_empty (int *) ;

__attribute__((used)) static __poll_t rpmsg_eptdev_poll(struct file *filp, poll_table *wait)
{
 struct rpmsg_eptdev *eptdev = filp->private_data;
 __poll_t mask = 0;

 if (!eptdev->ept)
  return EPOLLERR;

 poll_wait(filp, &eptdev->readq, wait);

 if (!skb_queue_empty(&eptdev->queue))
  mask |= EPOLLIN | EPOLLRDNORM;

 mask |= rpmsg_poll(eptdev->ept, filp, wait);

 return mask;
}
