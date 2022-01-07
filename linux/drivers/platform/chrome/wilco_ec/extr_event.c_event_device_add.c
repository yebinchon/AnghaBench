
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int release; int * class; int devt; } ;
struct event_device_data {int exist; TYPE_1__ dev; int cdev; int available; int wq; int queue_lock; int events; } ;
struct acpi_device {struct event_device_data* driver_data; int dev; } ;


 int ENOMEM ;
 int EVENT_DEV_NAME_FMT ;
 scalar_t__ EVENT_MAX_DEV ;
 int GFP_KERNEL ;
 int MKDEV (int ,int) ;
 int atomic_set (int *,int) ;
 int cdev_device_add (int *,TYPE_1__*) ;
 int cdev_init (int *,int *) ;
 int dev_err (int *,char*,int) ;
 int dev_set_name (TYPE_1__*,int ,int) ;
 int device_initialize (TYPE_1__*) ;
 int event_class ;
 int event_fops ;
 int event_ida ;
 int event_major ;
 int event_queue_new (int ) ;
 int free_device_data ;
 int hangup_device (struct event_device_data*) ;
 int ida_alloc_max (int *,scalar_t__,int ) ;
 int ida_simple_remove (int *,int) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct event_device_data*) ;
 struct event_device_data* kzalloc (int,int ) ;
 int queue_size ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int event_device_add(struct acpi_device *adev)
{
 struct event_device_data *dev_data;
 int error, minor;

 minor = ida_alloc_max(&event_ida, EVENT_MAX_DEV-1, GFP_KERNEL);
 if (minor < 0) {
  error = minor;
  dev_err(&adev->dev, "Failed to find minor number: %d\n", error);
  return error;
 }

 dev_data = kzalloc(sizeof(*dev_data), GFP_KERNEL);
 if (!dev_data) {
  error = -ENOMEM;
  goto free_minor;
 }


 adev->driver_data = dev_data;
 dev_data->events = event_queue_new(queue_size);
 if (!dev_data->events) {
  kfree(dev_data);
  error = -ENOMEM;
  goto free_minor;
 }
 spin_lock_init(&dev_data->queue_lock);
 init_waitqueue_head(&dev_data->wq);
 dev_data->exist = 1;
 atomic_set(&dev_data->available, 1);


 dev_data->dev.devt = MKDEV(event_major, minor);
 dev_data->dev.class = &event_class;
 dev_data->dev.release = free_device_data;
 dev_set_name(&dev_data->dev, EVENT_DEV_NAME_FMT, minor);
 device_initialize(&dev_data->dev);


 cdev_init(&dev_data->cdev, &event_fops);
 error = cdev_device_add(&dev_data->cdev, &dev_data->dev);
 if (error)
  goto free_dev_data;

 return 0;

free_dev_data:
 hangup_device(dev_data);
free_minor:
 ida_simple_remove(&event_ida, minor);
 return error;
}
