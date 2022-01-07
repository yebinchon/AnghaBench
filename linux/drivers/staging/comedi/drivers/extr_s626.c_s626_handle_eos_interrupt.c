
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ logical_base; } ;
struct s626_private {scalar_t__ ai_cmd_running; TYPE_1__ ana_buf; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {struct comedi_subdevice* read_subdev; struct s626_private* private; } ;
struct comedi_cmd {int chanlist_len; scalar_t__ stop_src; scalar_t__ stop_arg; scalar_t__ scan_begin_src; int scan_begin_arg; } ;
struct comedi_async {scalar_t__ scans_done; int events; struct comedi_cmd cmd; } ;


 int COMEDI_CB_CANCEL_MASK ;
 int COMEDI_CB_EOA ;
 scalar_t__ TRIG_COUNT ;
 scalar_t__ TRIG_EXT ;
 int comedi_buf_write_samples (struct comedi_subdevice*,unsigned short*,int) ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 unsigned short s626_ai_reg_to_uint (int ) ;
 int s626_dio_set_irq (struct comedi_device*,int ) ;

__attribute__((used)) static bool s626_handle_eos_interrupt(struct comedi_device *dev)
{
 struct s626_private *devpriv = dev->private;
 struct comedi_subdevice *s = dev->read_subdev;
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;





 u32 *readaddr = (u32 *)devpriv->ana_buf.logical_base + 1;
 int i;


 for (i = 0; i < cmd->chanlist_len; i++) {
  unsigned short tempdata;





  tempdata = s626_ai_reg_to_uint(*readaddr);
  readaddr++;

  comedi_buf_write_samples(s, &tempdata, 1);
 }

 if (cmd->stop_src == TRIG_COUNT && async->scans_done >= cmd->stop_arg)
  async->events |= COMEDI_CB_EOA;

 if (async->events & COMEDI_CB_CANCEL_MASK)
  devpriv->ai_cmd_running = 0;

 if (devpriv->ai_cmd_running && cmd->scan_begin_src == TRIG_EXT)
  s626_dio_set_irq(dev, cmd->scan_begin_arg);

 comedi_handle_events(dev, s);

 return !devpriv->ai_cmd_running;
}
