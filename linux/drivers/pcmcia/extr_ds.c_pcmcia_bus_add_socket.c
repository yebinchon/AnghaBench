
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int present; scalar_t__ device_count; scalar_t__ pcmcia_pfc; int devices_list; } ;
struct device {int kobj; } ;
struct class_interface {int dummy; } ;


 int ENODEV ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 int dev_err (struct device*,char*) ;
 struct pcmcia_socket* dev_get_drvdata (struct device*) ;
 int pccard_cis_attr ;
 int pccard_register_pcmcia (struct pcmcia_socket*,int *) ;
 int pcmcia_bus_callback ;
 struct pcmcia_socket* pcmcia_get_socket (struct pcmcia_socket*) ;
 int pcmcia_put_socket (struct pcmcia_socket*) ;
 int sysfs_create_bin_file (int *,int *) ;

__attribute__((used)) static int pcmcia_bus_add_socket(struct device *dev,
        struct class_interface *class_intf)
{
 struct pcmcia_socket *socket = dev_get_drvdata(dev);
 int ret;

 socket = pcmcia_get_socket(socket);
 if (!socket) {
  dev_err(dev, "PCMCIA obtaining reference to socket failed\n");
  return -ENODEV;
 }

 ret = sysfs_create_bin_file(&dev->kobj, &pccard_cis_attr);
 if (ret) {
  dev_err(dev, "PCMCIA registration failed\n");
  pcmcia_put_socket(socket);
  return ret;
 }

 INIT_LIST_HEAD(&socket->devices_list);
 socket->pcmcia_pfc = 0;
 socket->device_count = 0;
 atomic_set(&socket->present, 0);

 ret = pccard_register_pcmcia(socket, &pcmcia_bus_callback);
 if (ret) {
  dev_err(dev, "PCMCIA registration failed\n");
  pcmcia_put_socket(socket);
  return ret;
 }

 return 0;
}
