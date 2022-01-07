
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dummy; } ;
struct comedi_device {scalar_t__ hw_dev; } ;


 struct pcmcia_device* to_pcmcia_dev (scalar_t__) ;

struct pcmcia_device *comedi_to_pcmcia_dev(struct comedi_device *dev)
{
 return dev->hw_dev ? to_pcmcia_dev(dev->hw_dev) : ((void*)0);
}
