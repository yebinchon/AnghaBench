
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int release; int * class; int devt; } ;
struct telem_device_data {TYPE_1__ dev; int cdev; int available; int ec; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MKDEV (int ,int) ;
 int TELEM_DEV_NAME_FMT ;
 scalar_t__ TELEM_MAX_DEV ;
 int atomic_set (int *,int) ;
 int cdev_device_add (int *,TYPE_1__*) ;
 int cdev_init (int *,int *) ;
 int dev_err (int *,char*,int) ;
 int dev_get_platdata (int *) ;
 int dev_set_name (TYPE_1__*,int ,int) ;
 int device_initialize (TYPE_1__*) ;
 int ida_alloc_max (int *,scalar_t__,int ) ;
 int ida_simple_remove (int *,int) ;
 struct telem_device_data* kzalloc (int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct telem_device_data*) ;
 int put_device (TYPE_1__*) ;
 int telem_class ;
 int telem_device_free ;
 int telem_fops ;
 int telem_ida ;
 int telem_major ;

__attribute__((used)) static int telem_device_probe(struct platform_device *pdev)
{
 struct telem_device_data *dev_data;
 int error, minor;


 minor = ida_alloc_max(&telem_ida, TELEM_MAX_DEV-1, GFP_KERNEL);
 if (minor < 0) {
  error = minor;
  dev_err(&pdev->dev, "Failed to find minor number: %d", error);
  return error;
 }

 dev_data = kzalloc(sizeof(*dev_data), GFP_KERNEL);
 if (!dev_data) {
  ida_simple_remove(&telem_ida, minor);
  return -ENOMEM;
 }


 dev_data->ec = dev_get_platdata(&pdev->dev);
 atomic_set(&dev_data->available, 1);
 platform_set_drvdata(pdev, dev_data);


 dev_data->dev.devt = MKDEV(telem_major, minor);
 dev_data->dev.class = &telem_class;
 dev_data->dev.release = telem_device_free;
 dev_set_name(&dev_data->dev, TELEM_DEV_NAME_FMT, minor);
 device_initialize(&dev_data->dev);

                                                              ;
 cdev_init(&dev_data->cdev, &telem_fops);
 error = cdev_device_add(&dev_data->cdev, &dev_data->dev);
 if (error) {
  put_device(&dev_data->dev);
  ida_simple_remove(&telem_ida, minor);
  return error;
 }

 return 0;
}
