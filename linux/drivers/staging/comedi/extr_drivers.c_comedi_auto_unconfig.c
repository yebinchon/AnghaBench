
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int comedi_release_hardware_device (struct device*) ;

void comedi_auto_unconfig(struct device *hardware_device)
{
 if (!hardware_device)
  return;
 comedi_release_hardware_device(hardware_device);
}
