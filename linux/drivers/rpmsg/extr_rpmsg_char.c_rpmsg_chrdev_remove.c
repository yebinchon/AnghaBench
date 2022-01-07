
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmsg_device {int dev; } ;
struct rpmsg_ctrldev {int dev; } ;


 struct rpmsg_ctrldev* dev_get_drvdata (int *) ;
 int dev_warn (int *,char*,int) ;
 int device_del (int *) ;
 int device_for_each_child (int *,int *,int ) ;
 int put_device (int *) ;
 int rpmsg_eptdev_destroy ;

__attribute__((used)) static void rpmsg_chrdev_remove(struct rpmsg_device *rpdev)
{
 struct rpmsg_ctrldev *ctrldev = dev_get_drvdata(&rpdev->dev);
 int ret;


 ret = device_for_each_child(&ctrldev->dev, ((void*)0), rpmsg_eptdev_destroy);
 if (ret)
  dev_warn(&rpdev->dev, "failed to nuke endpoints: %d\n", ret);

 device_del(&ctrldev->dev);
 put_device(&ctrldev->dev);
}
