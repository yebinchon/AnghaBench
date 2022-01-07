
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {unsigned int chanlist_len; int * chanlist; } ;
typedef int __le16 ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;


 unsigned int CR_RANGE (int ) ;
 unsigned int comedi_bytes_to_samples (struct comedi_subdevice*,unsigned int) ;
 unsigned short comedi_offset_munge (struct comedi_subdevice*,unsigned short) ;
 scalar_t__ comedi_range_is_bipolar (struct comedi_subdevice*,unsigned int) ;
 int cpu_to_le16 (unsigned short) ;

__attribute__((used)) static void ni_ao_munge(struct comedi_device *dev, struct comedi_subdevice *s,
   void *data, unsigned int num_bytes,
   unsigned int chan_index)
{
 struct comedi_cmd *cmd = &s->async->cmd;
 unsigned int nsamples = comedi_bytes_to_samples(s, num_bytes);
 unsigned short *array = data;
 unsigned int i;




 for (i = 0; i < nsamples; i++) {
  unsigned int range = CR_RANGE(cmd->chanlist[chan_index]);
  unsigned short val = array[i];





  if (comedi_range_is_bipolar(s, range))
   val = comedi_offset_munge(s, val);




  array[i] = val;

  chan_index++;
  chan_index %= cmd->chanlist_len;
 }
}
