
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcl816_private {unsigned int ai_poll_ptr; scalar_t__ ai_cmd_canceled; int ai_cmd_running; struct comedi_isadma* dma; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_isadma_desc {int virt_addr; int size; } ;
struct comedi_isadma {size_t cur_dma; struct comedi_isadma_desc* desc; } ;
struct comedi_device {int attached; struct pcl816_private* private; struct comedi_subdevice* read_subdev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned int comedi_bytes_to_samples (struct comedi_subdevice*,int ) ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 int pcl816_ai_clear_eoc (struct comedi_device*) ;
 int pcl816_ai_setup_dma (struct comedi_device*,struct comedi_subdevice*,unsigned int) ;
 int transfer_from_dma_buf (struct comedi_device*,struct comedi_subdevice*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static irqreturn_t pcl816_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct comedi_subdevice *s = dev->read_subdev;
 struct pcl816_private *devpriv = dev->private;
 struct comedi_isadma *dma = devpriv->dma;
 struct comedi_isadma_desc *desc = &dma->desc[dma->cur_dma];
 unsigned int nsamples;
 unsigned int bufptr;

 if (!dev->attached || !devpriv->ai_cmd_running) {
  pcl816_ai_clear_eoc(dev);
  return IRQ_HANDLED;
 }

 if (devpriv->ai_cmd_canceled) {
  devpriv->ai_cmd_canceled = 0;
  pcl816_ai_clear_eoc(dev);
  return IRQ_HANDLED;
 }

 nsamples = comedi_bytes_to_samples(s, desc->size) -
     devpriv->ai_poll_ptr;
 bufptr = devpriv->ai_poll_ptr;
 devpriv->ai_poll_ptr = 0;


 dma->cur_dma = 1 - dma->cur_dma;
 pcl816_ai_setup_dma(dev, s, nsamples);

 transfer_from_dma_buf(dev, s, desc->virt_addr, bufptr, nsamples);

 pcl816_ai_clear_eoc(dev);

 comedi_handle_events(dev, s);
 return IRQ_HANDLED;
}
