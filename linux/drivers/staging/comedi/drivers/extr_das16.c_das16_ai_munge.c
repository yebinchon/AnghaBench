
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int maxdata; } ;
struct comedi_device {int dummy; } ;
typedef int __le16 ;


 unsigned int comedi_bytes_to_samples (struct comedi_subdevice*,unsigned int) ;
 unsigned short le16_to_cpu (int ) ;

__attribute__((used)) static void das16_ai_munge(struct comedi_device *dev,
      struct comedi_subdevice *s, void *array,
      unsigned int num_bytes,
      unsigned int start_chan_index)
{
 unsigned short *data = array;
 unsigned int num_samples = comedi_bytes_to_samples(s, num_bytes);
 unsigned int i;
 __le16 *buf = array;

 for (i = 0; i < num_samples; i++) {
  data[i] = le16_to_cpu(buf[i]);
  if (s->maxdata == 0x0fff)
   data[i] >>= 4;
  data[i] &= s->maxdata;
 }
}
