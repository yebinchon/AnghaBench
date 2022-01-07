
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmmio_private {scalar_t__ active; scalar_t__ enabled_mask; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct pcmmio_private* private; } ;
struct TYPE_2__ {int * inttrig; } ;


 int PCMMIO_PAGE_ENAB ;
 int pcmmio_dio_write (struct comedi_device*,int ,int ,int ) ;

__attribute__((used)) static void pcmmio_stop_intr(struct comedi_device *dev,
        struct comedi_subdevice *s)
{
 struct pcmmio_private *devpriv = dev->private;

 devpriv->enabled_mask = 0;
 devpriv->active = 0;
 s->async->inttrig = ((void*)0);


 pcmmio_dio_write(dev, 0, PCMMIO_PAGE_ENAB, 0);
}
