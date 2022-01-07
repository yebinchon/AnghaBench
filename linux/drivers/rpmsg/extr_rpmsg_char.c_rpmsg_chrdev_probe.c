
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rpmsg_device {int dev; } ;
struct TYPE_3__ {int owner; } ;
struct device {int id; int devt; int release; int class; int * parent; } ;
struct rpmsg_ctrldev {TYPE_1__ cdev; struct device dev; struct rpmsg_device* rpdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int MKDEV (int ,int) ;
 int RPMSG_DEV_MAX ;
 int THIS_MODULE ;
 int cdev_add (TYPE_1__*,int ,int) ;
 int cdev_init (TYPE_1__*,int *) ;
 int dev_err (int *,char*,int) ;
 int dev_set_drvdata (int *,struct rpmsg_ctrldev*) ;
 int dev_set_name (struct device*,char*,int) ;
 int device_add (struct device*) ;
 int device_initialize (struct device*) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int kfree (struct rpmsg_ctrldev*) ;
 struct rpmsg_ctrldev* kzalloc (int,int ) ;
 int put_device (struct device*) ;
 int rpmsg_class ;
 int rpmsg_ctrl_ida ;
 int rpmsg_ctrldev_fops ;
 int rpmsg_ctrldev_release_device ;
 int rpmsg_major ;
 int rpmsg_minor_ida ;

__attribute__((used)) static int rpmsg_chrdev_probe(struct rpmsg_device *rpdev)
{
 struct rpmsg_ctrldev *ctrldev;
 struct device *dev;
 int ret;

 ctrldev = kzalloc(sizeof(*ctrldev), GFP_KERNEL);
 if (!ctrldev)
  return -ENOMEM;

 ctrldev->rpdev = rpdev;

 dev = &ctrldev->dev;
 device_initialize(dev);
 dev->parent = &rpdev->dev;
 dev->class = rpmsg_class;

 cdev_init(&ctrldev->cdev, &rpmsg_ctrldev_fops);
 ctrldev->cdev.owner = THIS_MODULE;

 ret = ida_simple_get(&rpmsg_minor_ida, 0, RPMSG_DEV_MAX, GFP_KERNEL);
 if (ret < 0)
  goto free_ctrldev;
 dev->devt = MKDEV(MAJOR(rpmsg_major), ret);

 ret = ida_simple_get(&rpmsg_ctrl_ida, 0, 0, GFP_KERNEL);
 if (ret < 0)
  goto free_minor_ida;
 dev->id = ret;
 dev_set_name(&ctrldev->dev, "rpmsg_ctrl%d", ret);

 ret = cdev_add(&ctrldev->cdev, dev->devt, 1);
 if (ret)
  goto free_ctrl_ida;


 dev->release = rpmsg_ctrldev_release_device;

 ret = device_add(dev);
 if (ret) {
  dev_err(&rpdev->dev, "device_add failed: %d\n", ret);
  put_device(dev);
 }

 dev_set_drvdata(&rpdev->dev, ctrldev);

 return ret;

free_ctrl_ida:
 ida_simple_remove(&rpmsg_ctrl_ida, dev->id);
free_minor_ida:
 ida_simple_remove(&rpmsg_minor_ida, MINOR(dev->devt));
free_ctrldev:
 put_device(dev);
 kfree(ctrldev);

 return ret;
}
