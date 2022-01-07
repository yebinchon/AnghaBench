
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct device {int dummy; } ;
struct ccwgroup_driver {scalar_t__ ccw_driver; int (* setup ) (struct ccwgroup_device*) ;int driver; } ;
struct TYPE_12__ {int * driver; int groups; int release; struct device* parent; int * bus; } ;
struct ccwgroup_device {int count; TYPE_2__ dev; int reg_mutex; TYPE_3__** cdev; int ungroup_work; int onoff; } ;
struct ccw_dev_id {int dummy; } ;
struct TYPE_11__ {scalar_t__ driver_info; } ;
struct TYPE_13__ {scalar_t__ drv; TYPE_2__ dev; int ccwlock; TYPE_1__ id; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int __ccwgroup_create_symlinks (struct ccwgroup_device*) ;
 int __get_next_id (char const**,struct ccw_dev_id*) ;
 int atomic_set (int *,int ) ;
 int ccwgroup_attr_groups ;
 int ccwgroup_bus_type ;
 int ccwgroup_release ;
 int ccwgroup_ungroup_workfn ;
 int cdev ;
 struct ccwgroup_device* dev_get_drvdata (TYPE_2__*) ;
 int dev_name (TYPE_2__*) ;
 int dev_set_drvdata (TYPE_2__*,struct ccwgroup_device*) ;
 int dev_set_name (TYPE_2__*,char*,int ) ;
 int device_add (TYPE_2__*) ;
 int device_del (TYPE_2__*) ;
 int device_initialize (TYPE_2__*) ;
 TYPE_3__* get_ccwdev_by_dev_id (struct ccw_dev_id*) ;
 struct ccwgroup_device* kzalloc (int ,int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (TYPE_2__*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 scalar_t__ strlen (char const*) ;
 int struct_size (struct ccwgroup_device*,int ,int) ;
 int stub1 (struct ccwgroup_device*) ;

int ccwgroup_create_dev(struct device *parent, struct ccwgroup_driver *gdrv,
   int num_devices, const char *buf)
{
 struct ccwgroup_device *gdev;
 struct ccw_dev_id dev_id;
 int rc, i;

 if (num_devices < 1)
  return -EINVAL;

 gdev = kzalloc(struct_size(gdev, cdev, num_devices), GFP_KERNEL);
 if (!gdev)
  return -ENOMEM;

 atomic_set(&gdev->onoff, 0);
 mutex_init(&gdev->reg_mutex);
 mutex_lock(&gdev->reg_mutex);
 INIT_WORK(&gdev->ungroup_work, ccwgroup_ungroup_workfn);
 gdev->count = num_devices;
 gdev->dev.bus = &ccwgroup_bus_type;
 gdev->dev.parent = parent;
 gdev->dev.release = ccwgroup_release;
 device_initialize(&gdev->dev);

 for (i = 0; i < num_devices && buf; i++) {
  rc = __get_next_id(&buf, &dev_id);
  if (rc != 0)
   goto error;
  gdev->cdev[i] = get_ccwdev_by_dev_id(&dev_id);




  if (!gdev->cdev[i] || !gdev->cdev[i]->drv ||
      gdev->cdev[i]->drv != gdev->cdev[0]->drv ||
      gdev->cdev[i]->id.driver_info !=
      gdev->cdev[0]->id.driver_info) {
   rc = -EINVAL;
   goto error;
  }

  spin_lock_irq(gdev->cdev[i]->ccwlock);
  if (dev_get_drvdata(&gdev->cdev[i]->dev)) {
   spin_unlock_irq(gdev->cdev[i]->ccwlock);
   rc = -EINVAL;
   goto error;
  }
  dev_set_drvdata(&gdev->cdev[i]->dev, gdev);
  spin_unlock_irq(gdev->cdev[i]->ccwlock);
 }

 if (i < num_devices) {
  rc = -EINVAL;
  goto error;
 }

 if (i == num_devices && buf && strlen(buf) > 0) {
  rc = -EINVAL;
  goto error;
 }

 if (gdrv && gdrv->ccw_driver &&
     gdev->cdev[0]->drv != gdrv->ccw_driver) {
  rc = -EINVAL;
  goto error;
 }

 dev_set_name(&gdev->dev, "%s", dev_name(&gdev->cdev[0]->dev));
 gdev->dev.groups = ccwgroup_attr_groups;

 if (gdrv) {
  gdev->dev.driver = &gdrv->driver;
  rc = gdrv->setup ? gdrv->setup(gdev) : 0;
  if (rc)
   goto error;
 }
 rc = device_add(&gdev->dev);
 if (rc)
  goto error;
 rc = __ccwgroup_create_symlinks(gdev);
 if (rc) {
  device_del(&gdev->dev);
  goto error;
 }
 mutex_unlock(&gdev->reg_mutex);
 return 0;
error:
 for (i = 0; i < num_devices; i++)
  if (gdev->cdev[i]) {
   spin_lock_irq(gdev->cdev[i]->ccwlock);
   if (dev_get_drvdata(&gdev->cdev[i]->dev) == gdev)
    dev_set_drvdata(&gdev->cdev[i]->dev, ((void*)0));
   spin_unlock_irq(gdev->cdev[i]->ccwlock);
   put_device(&gdev->cdev[i]->dev);
   gdev->cdev[i] = ((void*)0);
  }
 mutex_unlock(&gdev->reg_mutex);
 put_device(&gdev->dev);
 return rc;
}
