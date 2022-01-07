
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {int kobj; int * ops; int owner; } ;
typedef int dev_t ;


 int ENOMEM ;
 int MAJOR (int ) ;
 int THIS_MODULE ;
 int UIO_MAX_DEVICES ;
 int alloc_chrdev_region (int *,int ,int ,char const*) ;
 int cdev_add (struct cdev*,int ,int ) ;
 struct cdev* cdev_alloc () ;
 int kobject_put (int *) ;
 int kobject_set_name (int *,char*,char const*) ;
 struct cdev* uio_cdev ;
 int uio_fops ;
 int uio_major ;
 int unregister_chrdev_region (int ,int ) ;

__attribute__((used)) static int uio_major_init(void)
{
 static const char name[] = "uio";
 struct cdev *cdev = ((void*)0);
 dev_t uio_dev = 0;
 int result;

 result = alloc_chrdev_region(&uio_dev, 0, UIO_MAX_DEVICES, name);
 if (result)
  goto out;

 result = -ENOMEM;
 cdev = cdev_alloc();
 if (!cdev)
  goto out_unregister;

 cdev->owner = THIS_MODULE;
 cdev->ops = &uio_fops;
 kobject_set_name(&cdev->kobj, "%s", name);

 result = cdev_add(cdev, uio_dev, UIO_MAX_DEVICES);
 if (result)
  goto out_put;

 uio_major = MAJOR(uio_dev);
 uio_cdev = cdev;
 return 0;
out_put:
 kobject_put(&cdev->kobj);
out_unregister:
 unregister_chrdev_region(uio_dev, UIO_MAX_DEVICES);
out:
 return result;
}
