
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct pi433_device {struct pi433_device* rx_buffer; int cdev; int devt; int tx_task_struct; int * spi; } ;


 int cdev_del (int ) ;
 int device_destroy (int ,int ) ;
 int free_gpio (struct pi433_device*) ;
 int kfree (struct pi433_device*) ;
 int kthread_stop (int ) ;
 int pi433_class ;
 int pi433_free_minor (struct pi433_device*) ;
 struct pi433_device* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int pi433_remove(struct spi_device *spi)
{
 struct pi433_device *device = spi_get_drvdata(spi);


 free_gpio(device);


 device->spi = ((void*)0);

 kthread_stop(device->tx_task_struct);

 device_destroy(pi433_class, device->devt);

 cdev_del(device->cdev);

 pi433_free_minor(device);

 kfree(device->rx_buffer);
 kfree(device);

 return 0;
}
