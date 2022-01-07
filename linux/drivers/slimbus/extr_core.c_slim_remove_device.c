
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slim_device {int dev; } ;


 int device_unregister (int *) ;

__attribute__((used)) static void slim_remove_device(struct slim_device *sbdev)
{
 device_unregister(&sbdev->dev);
}
