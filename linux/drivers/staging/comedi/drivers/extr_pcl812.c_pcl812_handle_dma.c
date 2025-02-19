
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcl812_private {int ai_poll_ptr; struct comedi_isadma* dma; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_isadma_desc {int virt_addr; int size; } ;
struct comedi_isadma {size_t cur_dma; struct comedi_isadma_desc* desc; } ;
struct comedi_device {struct pcl812_private* private; } ;


 unsigned int comedi_bytes_to_samples (struct comedi_subdevice*,int ) ;
 int pcl812_ai_setup_dma (struct comedi_device*,struct comedi_subdevice*,unsigned int) ;
 int transfer_from_dma_buf (struct comedi_device*,struct comedi_subdevice*,int ,int,unsigned int) ;

__attribute__((used)) static void pcl812_handle_dma(struct comedi_device *dev,
         struct comedi_subdevice *s)
{
 struct pcl812_private *devpriv = dev->private;
 struct comedi_isadma *dma = devpriv->dma;
 struct comedi_isadma_desc *desc = &dma->desc[dma->cur_dma];
 unsigned int nsamples;
 int bufptr;

 nsamples = comedi_bytes_to_samples(s, desc->size) -
     devpriv->ai_poll_ptr;
 bufptr = devpriv->ai_poll_ptr;
 devpriv->ai_poll_ptr = 0;


 dma->cur_dma = 1 - dma->cur_dma;
 pcl812_ai_setup_dma(dev, s, nsamples);

 transfer_from_dma_buf(dev, s, desc->virt_addr, bufptr, nsamples);
}
