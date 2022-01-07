
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 int socket_attrs ;
 int sysfs_create_group (int *,int *) ;

int pccard_sysfs_add_socket(struct device *dev)
{
 return sysfs_create_group(&dev->kobj, &socket_attrs);
}
