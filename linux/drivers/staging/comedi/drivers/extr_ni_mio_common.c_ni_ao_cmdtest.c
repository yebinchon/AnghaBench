
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int clock_ns; int routing_tables; } ;
struct ni_board_struct {int ao_speed; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct ni_private* private; struct ni_board_struct* board_ptr; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; unsigned int start_arg; unsigned int scan_begin_arg; unsigned int convert_arg; unsigned int scan_end_arg; unsigned int stop_arg; int flags; int chanlist_len; } ;


 int CR_CHAN (unsigned int) ;
 int NI_AO_SampleClock ;
 int NI_AO_StartTrigger ;
 int TRIG_COUNT ;


 int TRIG_NONE ;
 int TRIG_NOW ;
 int TRIG_TIMER ;
 int comedi_check_trigger_arg_is (unsigned int*,int ) ;
 int comedi_check_trigger_arg_max (unsigned int*,int) ;
 int comedi_check_trigger_arg_min (unsigned int*,int ) ;
 int comedi_check_trigger_is_unique (int) ;
 int comedi_check_trigger_src (int*,int) ;
 int ni_check_trigger_arg (int ,int ,int *) ;
 int ni_check_trigger_arg_roffs (int ,int ,int *,int) ;
 int ni_ns_to_timer (struct comedi_device*,unsigned int,int ) ;
 unsigned int ni_timer_to_ns (struct comedi_device*,int ) ;

__attribute__((used)) static int ni_ao_cmdtest(struct comedi_device *dev, struct comedi_subdevice *s,
    struct comedi_cmd *cmd)
{
 const struct ni_board_struct *board = dev->board_ptr;
 struct ni_private *devpriv = dev->private;
 int err = 0;
 unsigned int tmp;



 err |= comedi_check_trigger_src(&cmd->start_src, 128 | 129);
 err |= comedi_check_trigger_src(&cmd->scan_begin_src,
     TRIG_TIMER | 129);
 err |= comedi_check_trigger_src(&cmd->convert_src, TRIG_NOW);
 err |= comedi_check_trigger_src(&cmd->scan_end_src, TRIG_COUNT);
 err |= comedi_check_trigger_src(&cmd->stop_src, TRIG_COUNT | TRIG_NONE);

 if (err)
  return 1;



 err |= comedi_check_trigger_is_unique(cmd->start_src);
 err |= comedi_check_trigger_is_unique(cmd->scan_begin_src);
 err |= comedi_check_trigger_is_unique(cmd->stop_src);



 if (err)
  return 2;



 switch (cmd->start_src) {
 case 128:
  err |= comedi_check_trigger_arg_is(&cmd->start_arg, 0);
  break;
 case 129:
  err |= ni_check_trigger_arg_roffs(CR_CHAN(cmd->start_arg),
        NI_AO_StartTrigger,
        &devpriv->routing_tables, 1);
  break;
 }

 if (cmd->scan_begin_src == TRIG_TIMER) {
  err |= comedi_check_trigger_arg_min(&cmd->scan_begin_arg,
          board->ao_speed);
  err |= comedi_check_trigger_arg_max(&cmd->scan_begin_arg,
          devpriv->clock_ns *
          0xffffff);
 } else {
  err |= ni_check_trigger_arg(CR_CHAN(cmd->scan_begin_arg),
         NI_AO_SampleClock,
         &devpriv->routing_tables);
 }

 err |= comedi_check_trigger_arg_is(&cmd->convert_arg, 0);
 err |= comedi_check_trigger_arg_is(&cmd->scan_end_arg,
        cmd->chanlist_len);
 err |= comedi_check_trigger_arg_max(&cmd->stop_arg, 0x00ffffff);

 if (err)
  return 3;


 if (cmd->scan_begin_src == TRIG_TIMER) {
  tmp = cmd->scan_begin_arg;
  cmd->scan_begin_arg =
      ni_timer_to_ns(dev, ni_ns_to_timer(dev,
             cmd->scan_begin_arg,
             cmd->flags));
  if (tmp != cmd->scan_begin_arg)
   err++;
 }
 if (err)
  return 4;

 return 0;
}
