
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int devt; } ;
struct rpmsg_eptdev {int cdev; TYPE_1__ dev; } ;
struct device {int id; } ;


 int MINOR (int ) ;
 int cdev_del (int *) ;
 struct rpmsg_eptdev* dev_to_eptdev (struct device*) ;
 int ida_simple_remove (int *,int ) ;
 int kfree (struct rpmsg_eptdev*) ;
 int rpmsg_ept_ida ;
 int rpmsg_minor_ida ;

__attribute__((used)) static void rpmsg_eptdev_release_device(struct device *dev)
{
 struct rpmsg_eptdev *eptdev = dev_to_eptdev(dev);

 ida_simple_remove(&rpmsg_ept_ida, dev->id);
 ida_simple_remove(&rpmsg_minor_ida, MINOR(eptdev->dev.devt));
 cdev_del(&eptdev->cdev);
 kfree(eptdev);
}
