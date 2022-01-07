
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcl818_private {struct comedi_isadma* dma; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_isadma_desc {int size; int maxsize; } ;
struct comedi_isadma {size_t cur_dma; int chan; struct comedi_isadma_desc* desc; } ;
struct comedi_device {struct pcl818_private* private; } ;


 unsigned int comedi_bytes_to_samples (struct comedi_subdevice*,int ) ;
 int comedi_isadma_disable (int ) ;
 int comedi_isadma_program (struct comedi_isadma_desc*) ;
 unsigned int comedi_nsamples_left (struct comedi_subdevice*,unsigned int) ;
 int comedi_samples_to_bytes (struct comedi_subdevice*,unsigned int) ;

__attribute__((used)) static void pcl818_ai_setup_dma(struct comedi_device *dev,
    struct comedi_subdevice *s,
    unsigned int unread_samples)
{
 struct pcl818_private *devpriv = dev->private;
 struct comedi_isadma *dma = devpriv->dma;
 struct comedi_isadma_desc *desc = &dma->desc[dma->cur_dma];
 unsigned int max_samples = comedi_bytes_to_samples(s, desc->maxsize);
 unsigned int nsamples;

 comedi_isadma_disable(dma->chan);





 nsamples = comedi_nsamples_left(s, max_samples + unread_samples);
 if (nsamples > unread_samples) {
  nsamples -= unread_samples;
  desc->size = comedi_samples_to_bytes(s, nsamples);
  comedi_isadma_program(desc);
 }
}
