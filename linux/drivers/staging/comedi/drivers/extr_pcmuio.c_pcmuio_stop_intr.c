
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmuio_private {struct pcmuio_asic* asics; } ;
struct pcmuio_asic {scalar_t__ active; scalar_t__ enabled_mask; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct pcmuio_private* private; } ;
struct TYPE_2__ {int * inttrig; } ;


 int PCMUIO_PAGE_ENAB ;
 int pcmuio_subdevice_to_asic (struct comedi_subdevice*) ;
 int pcmuio_write (struct comedi_device*,int ,int,int ,int ) ;

__attribute__((used)) static void pcmuio_stop_intr(struct comedi_device *dev,
        struct comedi_subdevice *s)
{
 struct pcmuio_private *devpriv = dev->private;
 int asic = pcmuio_subdevice_to_asic(s);
 struct pcmuio_asic *chip = &devpriv->asics[asic];

 chip->enabled_mask = 0;
 chip->active = 0;
 s->async->inttrig = ((void*)0);


 pcmuio_write(dev, 0, asic, PCMUIO_PAGE_ENAB, 0);
}
