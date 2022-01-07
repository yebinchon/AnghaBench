
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int owner; } ;
struct rpmsg_channel_info {int dummy; } ;
struct device {int id; int devt; int release; int groups; int * parent; int class; } ;
struct rpmsg_eptdev {TYPE_1__ cdev; int readq; int queue; int queue_lock; int ept_lock; struct rpmsg_channel_info chinfo; struct rpmsg_device* rpdev; struct device dev; } ;
struct rpmsg_device {int dummy; } ;
struct rpmsg_ctrldev {int dev; struct rpmsg_device* rpdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int MKDEV (int ,int) ;
 int RPMSG_DEV_MAX ;
 int THIS_MODULE ;
 int cdev_add (TYPE_1__*,int ,int) ;
 int cdev_init (TYPE_1__*,int *) ;
 int dev_err (struct device*,char*,int) ;
 int dev_set_drvdata (struct device*,struct rpmsg_eptdev*) ;
 int dev_set_name (struct device*,char*,int) ;
 int device_add (struct device*) ;
 int device_initialize (struct device*) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct rpmsg_eptdev*) ;
 struct rpmsg_eptdev* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int put_device (struct device*) ;
 int rpmsg_class ;
 int rpmsg_ept_ida ;
 int rpmsg_eptdev_fops ;
 int rpmsg_eptdev_groups ;
 int rpmsg_eptdev_release_device ;
 int rpmsg_major ;
 int rpmsg_minor_ida ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int rpmsg_eptdev_create(struct rpmsg_ctrldev *ctrldev,
          struct rpmsg_channel_info chinfo)
{
 struct rpmsg_device *rpdev = ctrldev->rpdev;
 struct rpmsg_eptdev *eptdev;
 struct device *dev;
 int ret;

 eptdev = kzalloc(sizeof(*eptdev), GFP_KERNEL);
 if (!eptdev)
  return -ENOMEM;

 dev = &eptdev->dev;
 eptdev->rpdev = rpdev;
 eptdev->chinfo = chinfo;

 mutex_init(&eptdev->ept_lock);
 spin_lock_init(&eptdev->queue_lock);
 skb_queue_head_init(&eptdev->queue);
 init_waitqueue_head(&eptdev->readq);

 device_initialize(dev);
 dev->class = rpmsg_class;
 dev->parent = &ctrldev->dev;
 dev->groups = rpmsg_eptdev_groups;
 dev_set_drvdata(dev, eptdev);

 cdev_init(&eptdev->cdev, &rpmsg_eptdev_fops);
 eptdev->cdev.owner = THIS_MODULE;

 ret = ida_simple_get(&rpmsg_minor_ida, 0, RPMSG_DEV_MAX, GFP_KERNEL);
 if (ret < 0)
  goto free_eptdev;
 dev->devt = MKDEV(MAJOR(rpmsg_major), ret);

 ret = ida_simple_get(&rpmsg_ept_ida, 0, 0, GFP_KERNEL);
 if (ret < 0)
  goto free_minor_ida;
 dev->id = ret;
 dev_set_name(dev, "rpmsg%d", ret);

 ret = cdev_add(&eptdev->cdev, dev->devt, 1);
 if (ret)
  goto free_ept_ida;


 dev->release = rpmsg_eptdev_release_device;

 ret = device_add(dev);
 if (ret) {
  dev_err(dev, "device_add failed: %d\n", ret);
  put_device(dev);
 }

 return ret;

free_ept_ida:
 ida_simple_remove(&rpmsg_ept_ida, dev->id);
free_minor_ida:
 ida_simple_remove(&rpmsg_minor_ida, MINOR(dev->devt));
free_eptdev:
 put_device(dev);
 kfree(eptdev);

 return ret;
}
