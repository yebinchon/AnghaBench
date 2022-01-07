
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class_interface {int * class; } ;


 int class_interface_register (struct class_interface*) ;
 int sdev_class ;

int scsi_register_interface(struct class_interface *intf)
{
 intf->class = &sdev_class;

 return class_interface_register(intf);
}
