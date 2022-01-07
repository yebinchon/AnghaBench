
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int kobj; } ;
struct platform_device {struct device dev; } ;
struct axis_fifo {TYPE_1__* mem; int base_addr; int irq; int devt; struct device* device; int char_device; } ;
struct TYPE_2__ {int start; } ;


 int axis_fifo_attrs_group ;
 int axis_fifo_driver_class ;
 int cdev_del (int *) ;
 struct axis_fifo* dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,int *) ;
 int device_destroy (int ,int ) ;
 int free_irq (int ,struct axis_fifo*) ;
 int iounmap (int ) ;
 int release_mem_region (int ,int ) ;
 int resource_size (TYPE_1__*) ;
 int sysfs_remove_group (int *,int *) ;
 int unregister_chrdev_region (int ,int) ;

__attribute__((used)) static int axis_fifo_remove(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct axis_fifo *fifo = dev_get_drvdata(dev);

 sysfs_remove_group(&fifo->device->kobj, &axis_fifo_attrs_group);
 cdev_del(&fifo->char_device);
 dev_set_drvdata(fifo->device, ((void*)0));
 device_destroy(axis_fifo_driver_class, fifo->devt);
 unregister_chrdev_region(fifo->devt, 1);
 free_irq(fifo->irq, fifo);
 iounmap(fifo->base_addr);
 release_mem_region(fifo->mem->start, resource_size(fifo->mem));
 dev_set_drvdata(dev, ((void*)0));
 return 0;
}
