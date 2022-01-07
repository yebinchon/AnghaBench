
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_device {int write_comp; } ;


 int complete (int *) ;

void serdev_device_write_wakeup(struct serdev_device *serdev)
{
 complete(&serdev->write_comp);
}
