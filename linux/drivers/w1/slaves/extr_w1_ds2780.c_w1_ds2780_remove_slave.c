
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_slave {int dev; } ;
struct platform_device {int dummy; } ;


 struct platform_device* dev_get_drvdata (int *) ;
 int platform_device_unregister (struct platform_device*) ;

__attribute__((used)) static void w1_ds2780_remove_slave(struct w1_slave *sl)
{
 struct platform_device *pdev = dev_get_drvdata(&sl->dev);

 platform_device_unregister(pdev);
}
