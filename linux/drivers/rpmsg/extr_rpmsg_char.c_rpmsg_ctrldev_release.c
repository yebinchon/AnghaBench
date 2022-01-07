
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmsg_ctrldev {int dev; } ;
struct inode {int i_cdev; } ;
struct file {int dummy; } ;


 struct rpmsg_ctrldev* cdev_to_ctrldev (int ) ;
 int put_device (int *) ;

__attribute__((used)) static int rpmsg_ctrldev_release(struct inode *inode, struct file *filp)
{
 struct rpmsg_ctrldev *ctrldev = cdev_to_ctrldev(inode->i_cdev);

 put_device(&ctrldev->dev);

 return 0;
}
