
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_isadma_desc {unsigned int size; int virt_addr; int chan; } ;
struct comedi_device {int dummy; } ;


 int comedi_buf_write_samples (struct comedi_subdevice*,int ,unsigned int) ;
 unsigned int comedi_bytes_to_samples (struct comedi_subdevice*,unsigned int) ;
 unsigned int comedi_isadma_disable (int ) ;
 unsigned int comedi_nsamples_left (struct comedi_subdevice*,unsigned int) ;

__attribute__((used)) static void das1800_flush_dma_channel(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_isadma_desc *desc)
{
 unsigned int residue = comedi_isadma_disable(desc->chan);
 unsigned int nbytes = desc->size - residue;
 unsigned int nsamples;


 nsamples = comedi_bytes_to_samples(s, nbytes);
 nsamples = comedi_nsamples_left(s, nsamples);

 comedi_buf_write_samples(s, desc->virt_addr, nsamples);
}
