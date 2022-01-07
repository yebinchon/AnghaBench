
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;


 unsigned int comedi_buf_read_samples (struct comedi_subdevice*,unsigned short*,unsigned int) ;
 unsigned int comedi_bytes_to_samples (struct comedi_subdevice*,unsigned int) ;
 unsigned int comedi_nsamples_left (struct comedi_subdevice*,unsigned int) ;

__attribute__((used)) static unsigned int cb_pcidas64_ao_fill_buffer(struct comedi_device *dev,
            struct comedi_subdevice *s,
            unsigned short *dest,
            unsigned int max_bytes)
{
 unsigned int nsamples = comedi_bytes_to_samples(s, max_bytes);
 unsigned int actual_bytes;

 nsamples = comedi_nsamples_left(s, nsamples);
 actual_bytes = comedi_buf_read_samples(s, dest, nsamples);

 return comedi_bytes_to_samples(s, actual_bytes);
}
