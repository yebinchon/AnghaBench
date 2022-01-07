
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * bus; } ;
struct ccw_device {struct device dev; } ;


 int ccw_bus_type ;
 int device_add (struct device*) ;

__attribute__((used)) static int ccw_device_add(struct ccw_device *cdev)
{
 struct device *dev = &cdev->dev;

 dev->bus = &ccw_bus_type;
 return device_add(dev);
}
