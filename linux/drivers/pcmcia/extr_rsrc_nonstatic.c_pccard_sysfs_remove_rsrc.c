
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int * resource_ops; } ;
struct device {int kobj; } ;
struct class_interface {int dummy; } ;


 struct pcmcia_socket* dev_get_drvdata (struct device*) ;
 int pccard_nonstatic_ops ;
 int rsrc_attributes ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void pccard_sysfs_remove_rsrc(struct device *dev,
            struct class_interface *class_intf)
{
 struct pcmcia_socket *s = dev_get_drvdata(dev);

 if (s->resource_ops != &pccard_nonstatic_ops)
  return;
 sysfs_remove_group(&dev->kobj, &rsrc_attributes);
}
