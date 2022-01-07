
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dt282x_private {int supcsr; scalar_t__ nread; int ntrig; struct comedi_isadma* dma; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_isadma_desc {int size; int virt_addr; int chan; } ;
struct comedi_isadma {size_t cur_dma; struct comedi_isadma_desc* desc; } ;
struct comedi_device {scalar_t__ iobase; int class_dev; struct dt282x_private* private; } ;
struct TYPE_2__ {int events; } ;


 int COMEDI_CB_EOA ;
 int DT2821_SUPCSR_CLRDMADNE ;
 int DT2821_SUPCSR_DDMA ;
 scalar_t__ DT2821_SUPCSR_REG ;
 int comedi_buf_write_samples (struct comedi_subdevice*,int ,unsigned int) ;
 unsigned int comedi_bytes_to_samples (struct comedi_subdevice*,int) ;
 int comedi_isadma_disable (int ) ;
 int dev_info (int ,char*) ;
 int dt282x_munge (struct comedi_device*,struct comedi_subdevice*,int ,int) ;
 int dt282x_prep_ai_dma (struct comedi_device*,size_t,int ) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static void dt282x_ai_dma_interrupt(struct comedi_device *dev,
        struct comedi_subdevice *s)
{
 struct dt282x_private *devpriv = dev->private;
 struct comedi_isadma *dma = devpriv->dma;
 struct comedi_isadma_desc *desc = &dma->desc[dma->cur_dma];
 unsigned int nsamples = comedi_bytes_to_samples(s, desc->size);
 int ret;

 outw(devpriv->supcsr | DT2821_SUPCSR_CLRDMADNE,
      dev->iobase + DT2821_SUPCSR_REG);

 comedi_isadma_disable(desc->chan);

 dt282x_munge(dev, s, desc->virt_addr, desc->size);
 ret = comedi_buf_write_samples(s, desc->virt_addr, nsamples);
 if (ret != desc->size)
  return;

 devpriv->nread -= nsamples;
 if (devpriv->nread < 0) {
  dev_info(dev->class_dev, "nread off by one\n");
  devpriv->nread = 0;
 }
 if (!devpriv->nread) {
  s->async->events |= COMEDI_CB_EOA;
  return;
 }
 dt282x_prep_ai_dma(dev, dma->cur_dma, 0);

 dma->cur_dma = 1 - dma->cur_dma;
}
