
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dummy; } ;
struct comedi_device {int dummy; } ;


 struct pcmcia_device* comedi_to_pcmcia_dev (struct comedi_device*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

void comedi_pcmcia_disable(struct comedi_device *dev)
{
 struct pcmcia_device *link = comedi_to_pcmcia_dev(dev);

 if (link)
  pcmcia_disable_device(link);
}
