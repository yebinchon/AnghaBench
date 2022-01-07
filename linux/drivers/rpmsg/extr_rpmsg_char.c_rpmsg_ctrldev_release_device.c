
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmsg_ctrldev {int cdev; } ;
struct device {int devt; int id; } ;


 int MINOR (int ) ;
 int cdev_del (int *) ;
 struct rpmsg_ctrldev* dev_to_ctrldev (struct device*) ;
 int ida_simple_remove (int *,int ) ;
 int kfree (struct rpmsg_ctrldev*) ;
 int rpmsg_ctrl_ida ;
 int rpmsg_minor_ida ;

__attribute__((used)) static void rpmsg_ctrldev_release_device(struct device *dev)
{
 struct rpmsg_ctrldev *ctrldev = dev_to_ctrldev(dev);

 ida_simple_remove(&rpmsg_ctrl_ida, dev->id);
 ida_simple_remove(&rpmsg_minor_ida, MINOR(dev->devt));
 cdev_del(&ctrldev->cdev);
 kfree(ctrldev);
}
