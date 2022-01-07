
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {scalar_t__* ai_offset; } ;
struct comedi_subdevice {int subdev_flags; struct comedi_async* async; } ;
struct comedi_device {struct ni_private* private; } ;
struct comedi_cmd {unsigned int chanlist_len; } ;
struct comedi_async {struct comedi_cmd cmd; } ;
typedef int __le32 ;
typedef int __le16 ;


 int SDF_LSAMPL ;
 unsigned int comedi_bytes_to_samples (struct comedi_subdevice*,unsigned int) ;
 unsigned short le16_to_cpu (int ) ;
 unsigned int le32_to_cpu (int ) ;

__attribute__((used)) static void ni_ai_munge(struct comedi_device *dev, struct comedi_subdevice *s,
   void *data, unsigned int num_bytes,
   unsigned int chan_index)
{
 struct ni_private *devpriv = dev->private;
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;
 unsigned int nsamples = comedi_bytes_to_samples(s, num_bytes);
 unsigned short *array = data;
 unsigned int *larray = data;
 unsigned int i;





 for (i = 0; i < nsamples; i++) {






  if (s->subdev_flags & SDF_LSAMPL)
   larray[i] += devpriv->ai_offset[chan_index];
  else
   array[i] += devpriv->ai_offset[chan_index];
  chan_index++;
  chan_index %= cmd->chanlist_len;
 }
}
