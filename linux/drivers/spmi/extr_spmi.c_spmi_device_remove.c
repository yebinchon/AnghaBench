
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spmi_device {int dev; } ;


 int device_unregister (int *) ;

void spmi_device_remove(struct spmi_device *sdev)
{
 device_unregister(&sdev->dev);
}
