
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;


 unsigned short DAS16M1_AI_TO_SAMPLE (unsigned short) ;
 unsigned int comedi_bytes_to_samples (struct comedi_subdevice*,unsigned int) ;

__attribute__((used)) static void das16m1_ai_munge(struct comedi_device *dev,
        struct comedi_subdevice *s,
        void *data, unsigned int num_bytes,
        unsigned int start_chan_index)
{
 unsigned short *array = data;
 unsigned int nsamples = comedi_bytes_to_samples(s, num_bytes);
 unsigned int i;






 for (i = 0; i < nsamples; i++)
  array[i] = DAS16M1_AI_TO_SAMPLE(array[i]);
}
