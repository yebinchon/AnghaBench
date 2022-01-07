
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dt282x_private {int supcsr; struct comedi_isadma* dma; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_isadma_desc {int chan; } ;
struct comedi_isadma {size_t cur_dma; struct comedi_isadma_desc* desc; } ;
struct comedi_device {scalar_t__ iobase; struct dt282x_private* private; } ;
struct TYPE_2__ {int events; } ;


 int COMEDI_CB_OVERFLOW ;
 int DT2821_SUPCSR_CLRDMADNE ;
 scalar_t__ DT2821_SUPCSR_REG ;
 int comedi_isadma_disable (int ) ;
 int dt282x_ao_setup_dma (struct comedi_device*,struct comedi_subdevice*,size_t) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static void dt282x_ao_dma_interrupt(struct comedi_device *dev,
        struct comedi_subdevice *s)
{
 struct dt282x_private *devpriv = dev->private;
 struct comedi_isadma *dma = devpriv->dma;
 struct comedi_isadma_desc *desc = &dma->desc[dma->cur_dma];

 outw(devpriv->supcsr | DT2821_SUPCSR_CLRDMADNE,
      dev->iobase + DT2821_SUPCSR_REG);

 comedi_isadma_disable(desc->chan);

 if (!dt282x_ao_setup_dma(dev, s, dma->cur_dma))
  s->async->events |= COMEDI_CB_OVERFLOW;

 dma->cur_dma = 1 - dma->cur_dma;
}
