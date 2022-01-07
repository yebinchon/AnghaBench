
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct uio_info {scalar_t__ irq; struct uio_device* uio_dev; int name; int irq_flags; int version; } ;
struct TYPE_7__ {int release; struct device* parent; int * class; int devt; } ;
struct uio_device {TYPE_1__ dev; int minor; int event; int wait; int info_lock; struct uio_info* info; struct module* owner; } ;
struct module {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int MKDEV (int ,int ) ;
 scalar_t__ UIO_IRQ_CUSTOM ;
 int atomic_set (int *,int ) ;
 int dev_set_drvdata (TYPE_1__*,struct uio_device*) ;
 int dev_set_name (TYPE_1__*,char*,int ) ;
 int device_add (TYPE_1__*) ;
 int device_del (TYPE_1__*) ;
 int device_initialize (TYPE_1__*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct uio_device*) ;
 struct uio_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int put_device (TYPE_1__*) ;
 int request_irq (scalar_t__,int ,int ,int ,struct uio_device*) ;
 int uio_class ;
 int uio_class_registered ;
 int uio_dev_add_attributes (struct uio_device*) ;
 int uio_dev_del_attributes (struct uio_device*) ;
 int uio_device_release ;
 int uio_free_minor (struct uio_device*) ;
 int uio_get_minor (struct uio_device*) ;
 int uio_interrupt ;
 int uio_major ;

int __uio_register_device(struct module *owner,
     struct device *parent,
     struct uio_info *info)
{
 struct uio_device *idev;
 int ret = 0;

 if (!uio_class_registered)
  return -EPROBE_DEFER;

 if (!parent || !info || !info->name || !info->version)
  return -EINVAL;

 info->uio_dev = ((void*)0);

 idev = kzalloc(sizeof(*idev), GFP_KERNEL);
 if (!idev) {
  return -ENOMEM;
 }

 idev->owner = owner;
 idev->info = info;
 mutex_init(&idev->info_lock);
 init_waitqueue_head(&idev->wait);
 atomic_set(&idev->event, 0);

 ret = uio_get_minor(idev);
 if (ret) {
  kfree(idev);
  return ret;
 }

 device_initialize(&idev->dev);
 idev->dev.devt = MKDEV(uio_major, idev->minor);
 idev->dev.class = &uio_class;
 idev->dev.parent = parent;
 idev->dev.release = uio_device_release;
 dev_set_drvdata(&idev->dev, idev);

 ret = dev_set_name(&idev->dev, "uio%d", idev->minor);
 if (ret)
  goto err_device_create;

 ret = device_add(&idev->dev);
 if (ret)
  goto err_device_create;

 ret = uio_dev_add_attributes(idev);
 if (ret)
  goto err_uio_dev_add_attributes;

 info->uio_dev = idev;

 if (info->irq && (info->irq != UIO_IRQ_CUSTOM)) {
  ret = request_irq(info->irq, uio_interrupt,
      info->irq_flags, info->name, idev);
  if (ret) {
   info->uio_dev = ((void*)0);
   goto err_request_irq;
  }
 }

 return 0;

err_request_irq:
 uio_dev_del_attributes(idev);
err_uio_dev_add_attributes:
 device_del(&idev->dev);
err_device_create:
 uio_free_minor(idev);
 put_device(&idev->dev);
 return ret;
}
