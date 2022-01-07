
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {TYPE_1__** resource; int config_flags; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct comedi_subdevice* subdevices; int iobase; } ;
struct TYPE_2__ {int start; } ;


 int CONF_AUTO_SET_IO ;
 int comedi_alloc_subdevices (struct comedi_device*,int) ;
 int comedi_pcmcia_enable (struct comedi_device*,int *) ;
 struct pcmcia_device* comedi_to_pcmcia_dev (struct comedi_device*) ;
 int subdev_8255_init (struct comedi_device*,struct comedi_subdevice*,int *,int) ;

__attribute__((used)) static int dio24_auto_attach(struct comedi_device *dev,
        unsigned long context)
{
 struct pcmcia_device *link = comedi_to_pcmcia_dev(dev);
 struct comedi_subdevice *s;
 int ret;

 link->config_flags |= CONF_AUTO_SET_IO;
 ret = comedi_pcmcia_enable(dev, ((void*)0));
 if (ret)
  return ret;
 dev->iobase = link->resource[0]->start;

 ret = comedi_alloc_subdevices(dev, 1);
 if (ret)
  return ret;


 s = &dev->subdevices[0];
 return subdev_8255_init(dev, s, ((void*)0), 0x00);
}
