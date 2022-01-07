
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {TYPE_1__** resource; int config_flags; } ;
struct das08_private_struct {int dummy; } ;
struct comedi_device {int * board_ptr; } ;
struct TYPE_2__ {unsigned long start; } ;


 int CONF_AUTO_SET_IO ;
 int ENOMEM ;
 struct das08_private_struct* comedi_alloc_devpriv (struct comedi_device*,int) ;
 int comedi_pcmcia_enable (struct comedi_device*,int *) ;
 struct pcmcia_device* comedi_to_pcmcia_dev (struct comedi_device*) ;
 int das08_common_attach (struct comedi_device*,unsigned long) ;
 int * das08_cs_boards ;

__attribute__((used)) static int das08_cs_auto_attach(struct comedi_device *dev,
    unsigned long context)
{
 struct pcmcia_device *link = comedi_to_pcmcia_dev(dev);
 struct das08_private_struct *devpriv;
 unsigned long iobase;
 int ret;


 dev->board_ptr = &das08_cs_boards[0];

 link->config_flags |= CONF_AUTO_SET_IO;
 ret = comedi_pcmcia_enable(dev, ((void*)0));
 if (ret)
  return ret;
 iobase = link->resource[0]->start;

 devpriv = comedi_alloc_devpriv(dev, sizeof(*devpriv));
 if (!devpriv)
  return -ENOMEM;

 return das08_common_attach(dev, iobase);
}
