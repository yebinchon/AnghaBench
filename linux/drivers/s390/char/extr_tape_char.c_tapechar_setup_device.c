
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tape_device {int first_minor; TYPE_1__* cdev; void* rt; void* nt; } ;
struct TYPE_2__ {int dev; } ;


 int MKDEV (int ,int) ;
 void* register_tape_dev (int *,int ,int *,char*,char*) ;
 int sprintf (char*,char*,int) ;
 int tape_fops ;
 int tapechar_major ;

int
tapechar_setup_device(struct tape_device * device)
{
 char device_name[20];

 sprintf(device_name, "ntibm%i", device->first_minor / 2);
 device->nt = register_tape_dev(
  &device->cdev->dev,
  MKDEV(tapechar_major, device->first_minor),
  &tape_fops,
  device_name,
  "non-rewinding"
 );
 device_name[0] = 'r';
 device->rt = register_tape_dev(
  &device->cdev->dev,
  MKDEV(tapechar_major, device->first_minor + 1),
  &tape_fops,
  device_name,
  "rewinding"
 );

 return 0;
}
