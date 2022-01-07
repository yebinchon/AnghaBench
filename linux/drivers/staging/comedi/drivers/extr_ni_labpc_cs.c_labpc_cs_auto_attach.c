
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {int config_flags; int irq; TYPE_1__** resource; } ;
struct comedi_device {int iobase; int * board_ptr; } ;
struct TYPE_2__ {int start; } ;


 int CONF_AUTO_SET_IO ;
 int CONF_ENABLE_IRQ ;
 int CONF_ENABLE_PULSE_IRQ ;
 int EINVAL ;
 int IRQF_SHARED ;
 int comedi_pcmcia_enable (struct comedi_device*,int *) ;
 struct pcmcia_device* comedi_to_pcmcia_dev (struct comedi_device*) ;
 int labpc_common_attach (struct comedi_device*,int ,int ) ;
 int * labpc_cs_boards ;

__attribute__((used)) static int labpc_cs_auto_attach(struct comedi_device *dev,
    unsigned long context)
{
 struct pcmcia_device *link = comedi_to_pcmcia_dev(dev);
 int ret;


 dev->board_ptr = &labpc_cs_boards[0];

 link->config_flags |= CONF_AUTO_SET_IO |
         CONF_ENABLE_IRQ | CONF_ENABLE_PULSE_IRQ;
 ret = comedi_pcmcia_enable(dev, ((void*)0));
 if (ret)
  return ret;
 dev->iobase = link->resource[0]->start;

 if (!link->irq)
  return -EINVAL;

 return labpc_common_attach(dev, link->irq, IRQF_SHARED);
}
