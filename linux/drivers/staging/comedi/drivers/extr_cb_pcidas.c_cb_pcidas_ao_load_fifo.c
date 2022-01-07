
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct cb_pcidas_private* private; } ;
struct cb_pcidas_private {int ao_buffer; scalar_t__ pcibar4; } ;


 scalar_t__ PCIDAS_AO_FIFO_REG ;
 unsigned int comedi_buf_read_samples (struct comedi_subdevice*,int ,unsigned int) ;
 unsigned int comedi_bytes_to_samples (struct comedi_subdevice*,unsigned int) ;
 unsigned int comedi_nsamples_left (struct comedi_subdevice*,unsigned int) ;
 int outsw (scalar_t__,int ,unsigned int) ;

__attribute__((used)) static void cb_pcidas_ao_load_fifo(struct comedi_device *dev,
       struct comedi_subdevice *s,
       unsigned int nsamples)
{
 struct cb_pcidas_private *devpriv = dev->private;
 unsigned int nbytes;

 nsamples = comedi_nsamples_left(s, nsamples);
 nbytes = comedi_buf_read_samples(s, devpriv->ao_buffer, nsamples);

 nsamples = comedi_bytes_to_samples(s, nbytes);
 outsw(devpriv->pcibar4 + PCIDAS_AO_FIFO_REG,
       devpriv->ao_buffer, nsamples);
}
