
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int class_dev; } ;
struct comedi_cmd {scalar_t__* chanlist; } ;
struct TYPE_2__ {unsigned int cur_chan; int events; struct comedi_cmd cmd; } ;


 int COMEDI_CB_ERROR ;
 int comedi_buf_write_samples (struct comedi_subdevice*,unsigned short*,int) ;
 int dev_dbg (int ,char*) ;
 scalar_t__ pcl812_ai_eoc (struct comedi_device*,struct comedi_subdevice*,int *,int ) ;
 unsigned short pcl812_ai_get_sample (struct comedi_device*,struct comedi_subdevice*) ;
 int pcl812_ai_next_chan (struct comedi_device*,struct comedi_subdevice*) ;
 int pcl812_ai_set_chan_range (struct comedi_device*,scalar_t__,int ) ;

__attribute__((used)) static void pcl812_handle_eoc(struct comedi_device *dev,
         struct comedi_subdevice *s)
{
 struct comedi_cmd *cmd = &s->async->cmd;
 unsigned int chan = s->async->cur_chan;
 unsigned int next_chan;
 unsigned short val;

 if (pcl812_ai_eoc(dev, s, ((void*)0), 0)) {
  dev_dbg(dev->class_dev, "A/D cmd IRQ without DRDY!\n");
  s->async->events |= COMEDI_CB_ERROR;
  return;
 }

 val = pcl812_ai_get_sample(dev, s);
 comedi_buf_write_samples(s, &val, 1);


 next_chan = s->async->cur_chan;
 if (cmd->chanlist[chan] != cmd->chanlist[next_chan])
  pcl812_ai_set_chan_range(dev, cmd->chanlist[next_chan], 0);

 pcl812_ai_next_chan(dev, s);
}
