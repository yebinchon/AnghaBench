
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int *) ;
 int * device_attrs ;
 int device_create_file (int ,int *) ;
 int device_remove_file (int ,int *) ;
 int fbcon_device ;
 int fbcon_has_sysfs ;

__attribute__((used)) static int fbcon_init_device(void)
{
 int i, error = 0;

 fbcon_has_sysfs = 1;

 for (i = 0; i < ARRAY_SIZE(device_attrs); i++) {
  error = device_create_file(fbcon_device, &device_attrs[i]);

  if (error)
   break;
 }

 if (error) {
  while (--i >= 0)
   device_remove_file(fbcon_device, &device_attrs[i]);

  fbcon_has_sysfs = 0;
 }

 return 0;
}
