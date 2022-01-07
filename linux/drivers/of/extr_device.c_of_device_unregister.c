
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int device_unregister (int *) ;

void of_device_unregister(struct platform_device *ofdev)
{
 device_unregister(&ofdev->dev);
}
