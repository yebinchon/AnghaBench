
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmsg_eptdev {int dev; } ;
struct file {struct rpmsg_eptdev* private_data; } ;


 long EINVAL ;
 unsigned int RPMSG_DESTROY_EPT_IOCTL ;
 long rpmsg_eptdev_destroy (int *,int *) ;

__attribute__((used)) static long rpmsg_eptdev_ioctl(struct file *fp, unsigned int cmd,
          unsigned long arg)
{
 struct rpmsg_eptdev *eptdev = fp->private_data;

 if (cmd != RPMSG_DESTROY_EPT_IOCTL)
  return -EINVAL;

 return rpmsg_eptdev_destroy(&eptdev->dev, ((void*)0));
}
