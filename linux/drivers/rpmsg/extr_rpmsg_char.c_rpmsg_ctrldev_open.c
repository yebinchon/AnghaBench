
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmsg_ctrldev {int dev; } ;
struct inode {int i_cdev; } ;
struct file {struct rpmsg_ctrldev* private_data; } ;


 struct rpmsg_ctrldev* cdev_to_ctrldev (int ) ;
 int get_device (int *) ;

__attribute__((used)) static int rpmsg_ctrldev_open(struct inode *inode, struct file *filp)
{
 struct rpmsg_ctrldev *ctrldev = cdev_to_ctrldev(inode->i_cdev);

 get_device(&ctrldev->dev);
 filp->private_data = ctrldev;

 return 0;
}
