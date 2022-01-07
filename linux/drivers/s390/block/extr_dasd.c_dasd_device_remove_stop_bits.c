
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int stopped; } ;


 int generic_waitq ;
 int wake_up (int *) ;

void dasd_device_remove_stop_bits(struct dasd_device *device, int bits)
{
 device->stopped &= ~bits;
 if (!device->stopped)
  wake_up(&generic_waitq);
}
