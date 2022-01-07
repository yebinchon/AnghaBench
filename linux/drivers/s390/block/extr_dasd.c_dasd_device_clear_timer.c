
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int timer; } ;


 int del_timer (int *) ;

void dasd_device_clear_timer(struct dasd_device *device)
{
 del_timer(&device->timer);
}
