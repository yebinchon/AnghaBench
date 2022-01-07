
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {TYPE_1__* socket; } ;
struct TYPE_2__ {int present; } ;


 scalar_t__ atomic_read (int *) ;
 struct pcmcia_device* pcmcia_get_dev (struct pcmcia_device*) ;
 int pcmcia_put_dev (struct pcmcia_device*) ;

struct pcmcia_device *pcmcia_dev_present(struct pcmcia_device *_p_dev)
{
 struct pcmcia_device *p_dev;
 struct pcmcia_device *ret = ((void*)0);

 p_dev = pcmcia_get_dev(_p_dev);
 if (!p_dev)
  return ((void*)0);

 if (atomic_read(&p_dev->socket->present) != 0)
  ret = p_dev;

 pcmcia_put_dev(p_dev);
 return ret;
}
