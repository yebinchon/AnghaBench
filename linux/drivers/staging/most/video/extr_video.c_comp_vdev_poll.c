
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct most_video_dev {int wait_data; } ;
struct file {struct comp_fh* private_data; } ;
struct comp_fh {struct most_video_dev* mdev; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 scalar_t__ data_ready (struct most_video_dev*) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t comp_vdev_poll(struct file *filp, poll_table *wait)
{
 struct comp_fh *fh = filp->private_data;
 struct most_video_dev *mdev = fh->mdev;
 __poll_t mask = 0;


 if (!data_ready(mdev))
  poll_wait(filp, &mdev->wait_data, wait);
 if (data_ready(mdev))
  mask |= EPOLLIN | EPOLLRDNORM;

 return mask;
}
