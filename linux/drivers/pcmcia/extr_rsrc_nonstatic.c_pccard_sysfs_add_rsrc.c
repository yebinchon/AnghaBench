
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
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int pccard_sysfs_add_rsrc(struct device *dev,
        struct class_interface *class_intf)
{
 struct pcmcia_socket *s = dev_get_drvdata(dev);

 if (s->resource_ops != &pccard_nonstatic_ops)
  return 0;
 return sysfs_create_group(&dev->kobj, &rsrc_attributes);
}
