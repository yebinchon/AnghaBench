
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int skt_mutex; } ;
struct device {int kobj; } ;
struct class_interface {int dummy; } ;


 struct pcmcia_socket* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pccard_cis_attr ;
 int pccard_register_pcmcia (struct pcmcia_socket*,int *) ;
 int pcmcia_card_remove (struct pcmcia_socket*,int *) ;
 int pcmcia_put_socket (struct pcmcia_socket*) ;
 int release_cis_mem (struct pcmcia_socket*) ;
 int sysfs_remove_bin_file (int *,int *) ;

__attribute__((used)) static void pcmcia_bus_remove_socket(struct device *dev,
         struct class_interface *class_intf)
{
 struct pcmcia_socket *socket = dev_get_drvdata(dev);

 if (!socket)
  return;

 pccard_register_pcmcia(socket, ((void*)0));


 mutex_lock(&socket->skt_mutex);
 pcmcia_card_remove(socket, ((void*)0));
 release_cis_mem(socket);
 mutex_unlock(&socket->skt_mutex);

 sysfs_remove_bin_file(&dev->kobj, &pccard_cis_attr);

 pcmcia_put_socket(socket);

 return;
}
