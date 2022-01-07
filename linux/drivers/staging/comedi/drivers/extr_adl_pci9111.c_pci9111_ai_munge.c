
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int maxdata; } ;
struct comedi_device {int dummy; } ;


 unsigned int comedi_bytes_to_samples (struct comedi_subdevice*,unsigned int) ;

__attribute__((used)) static void pci9111_ai_munge(struct comedi_device *dev,
        struct comedi_subdevice *s, void *data,
        unsigned int num_bytes,
        unsigned int start_chan_index)
{
 unsigned short *array = data;
 unsigned int maxdata = s->maxdata;
 unsigned int invert = (maxdata + 1) >> 1;
 unsigned int shift = (maxdata == 0xffff) ? 0 : 4;
 unsigned int num_samples = comedi_bytes_to_samples(s, num_bytes);
 unsigned int i;

 for (i = 0; i < num_samples; i++)
  array[i] = ((array[i] >> shift) & maxdata) ^ invert;
}
