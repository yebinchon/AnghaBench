
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int n_chan; TYPE_2__** range_table_list; TYPE_1__* range_table; struct comedi_device* device; } ;
struct comedi_device {int class_dev; } ;
struct TYPE_4__ {int length; } ;
struct TYPE_3__ {int length; } ;


 int CR_CHAN (unsigned int) ;
 int CR_RANGE (unsigned int) ;
 int EINVAL ;
 int dev_warn (int ,char*,int,unsigned int,int,int) ;

int comedi_check_chanlist(struct comedi_subdevice *s, int n,
     unsigned int *chanlist)
{
 struct comedi_device *dev = s->device;
 unsigned int chanspec;
 int chan, range_len, i;

 for (i = 0; i < n; i++) {
  chanspec = chanlist[i];
  chan = CR_CHAN(chanspec);
  if (s->range_table)
   range_len = s->range_table->length;
  else if (s->range_table_list && chan < s->n_chan)
   range_len = s->range_table_list[chan]->length;
  else
   range_len = 0;
  if (chan >= s->n_chan ||
      CR_RANGE(chanspec) >= range_len) {
   dev_warn(dev->class_dev,
     "bad chanlist[%d]=0x%08x chan=%d range length=%d\n",
     i, chanspec, chan, range_len);
   return -EINVAL;
  }
 }
 return 0;
}
