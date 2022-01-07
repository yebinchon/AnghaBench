
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int device_initialize (int *) ;
 int of_device_add (struct platform_device*) ;

int of_device_register(struct platform_device *pdev)
{
 device_initialize(&pdev->dev);
 return of_device_add(pdev);
}
