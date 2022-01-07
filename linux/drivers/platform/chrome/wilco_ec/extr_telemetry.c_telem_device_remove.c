
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int devt; } ;
struct telem_device_data {TYPE_1__ dev; int cdev; } ;
struct platform_device {int dummy; } ;


 int MINOR (int ) ;
 int cdev_device_del (int *,TYPE_1__*) ;
 int ida_simple_remove (int *,int ) ;
 struct telem_device_data* platform_get_drvdata (struct platform_device*) ;
 int put_device (TYPE_1__*) ;
 int telem_ida ;

__attribute__((used)) static int telem_device_remove(struct platform_device *pdev)
{
 struct telem_device_data *dev_data = platform_get_drvdata(pdev);

 cdev_device_del(&dev_data->cdev, &dev_data->dev);
 put_device(&dev_data->dev);
 ida_simple_remove(&telem_ida, MINOR(dev_data->dev.devt));

 return 0;
}
