
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int dummy; } ;
struct pcmcia_device {scalar_t__ suspended; struct pcmcia_socket* socket; } ;
struct device {int dummy; } ;


 int runtime_suspend (struct device*) ;
 struct pcmcia_device* to_pcmcia_dev (struct device*) ;

__attribute__((used)) static int pcmcia_bus_suspend_callback(struct device *dev, void *_data)
{
 struct pcmcia_socket *skt = _data;
 struct pcmcia_device *p_dev = to_pcmcia_dev(dev);

 if (p_dev->socket != skt || p_dev->suspended)
  return 0;

 return runtime_suspend(dev);
}
