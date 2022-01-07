
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int dev; } ;
struct device {int dummy; } ;


 struct pcmcia_socket* dev_get_drvdata (struct device*) ;
 struct device* get_device (int *) ;

struct pcmcia_socket *pcmcia_get_socket(struct pcmcia_socket *skt)
{
 struct device *dev = get_device(&skt->dev);
 if (!dev)
  return ((void*)0);
 return dev_get_drvdata(dev);
}
