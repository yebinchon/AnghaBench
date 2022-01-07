
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int clock_ns; scalar_t__ is_6143; scalar_t__ is_611x; int routing_tables; } ;
struct ni_board_struct {int ai_speed; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct ni_private* private; struct ni_board_struct* board_ptr; } ;
struct comedi_cmd {unsigned int start_src; unsigned int scan_begin_src; unsigned int convert_src; unsigned int scan_end_src; unsigned int stop_src; unsigned int start_arg; unsigned int scan_begin_arg; unsigned int convert_arg; unsigned int scan_end_arg; unsigned int stop_arg; int flags; int chanlist_len; } ;


 int CR_CHAN (unsigned int) ;
 int NI_AI_ConvertClock ;
 int NI_AI_SampleClock ;
 int NI_AI_StartTrigger ;
 unsigned int TRIG_COUNT ;


 unsigned int TRIG_NONE ;

 unsigned int TRIG_TIMER ;
 int comedi_check_trigger_arg_is (unsigned int*,int ) ;
 int comedi_check_trigger_arg_max (unsigned int*,unsigned int) ;
 int comedi_check_trigger_arg_min (unsigned int*,int) ;
 int comedi_check_trigger_is_unique (unsigned int) ;
 int comedi_check_trigger_src (unsigned int*,unsigned int) ;
 int ni_check_trigger_arg_roffs (int ,int ,int *,int) ;
 int ni_min_ai_scan_period_ns (struct comedi_device*,int ) ;
 int ni_ns_to_timer (struct comedi_device*,unsigned int,int ) ;
 void* ni_timer_to_ns (struct comedi_device*,int ) ;
 scalar_t__ num_adc_stages_611x ;

__attribute__((used)) static int ni_ai_cmdtest(struct comedi_device *dev, struct comedi_subdevice *s,
    struct comedi_cmd *cmd)
{
 const struct ni_board_struct *board = dev->board_ptr;
 struct ni_private *devpriv = dev->private;
 int err = 0;
 unsigned int sources;



 err |= comedi_check_trigger_src(&cmd->start_src,
     128 | 129 | 130);
 err |= comedi_check_trigger_src(&cmd->scan_begin_src,
     TRIG_TIMER | 130);

 sources = TRIG_TIMER | 130;
 if (devpriv->is_611x || devpriv->is_6143)
  sources |= 128;
 err |= comedi_check_trigger_src(&cmd->convert_src, sources);

 err |= comedi_check_trigger_src(&cmd->scan_end_src, TRIG_COUNT);
 err |= comedi_check_trigger_src(&cmd->stop_src, TRIG_COUNT | TRIG_NONE);

 if (err)
  return 1;



 err |= comedi_check_trigger_is_unique(cmd->start_src);
 err |= comedi_check_trigger_is_unique(cmd->scan_begin_src);
 err |= comedi_check_trigger_is_unique(cmd->convert_src);
 err |= comedi_check_trigger_is_unique(cmd->stop_src);



 if (err)
  return 2;



 switch (cmd->start_src) {
 case 128:
 case 129:
  err |= comedi_check_trigger_arg_is(&cmd->start_arg, 0);
  break;
 case 130:
  err |= ni_check_trigger_arg_roffs(CR_CHAN(cmd->start_arg),
        NI_AI_StartTrigger,
        &devpriv->routing_tables, 1);
  break;
 }

 if (cmd->scan_begin_src == TRIG_TIMER) {
  err |= comedi_check_trigger_arg_min(&cmd->scan_begin_arg,
   ni_min_ai_scan_period_ns(dev, cmd->chanlist_len));
  err |= comedi_check_trigger_arg_max(&cmd->scan_begin_arg,
          devpriv->clock_ns *
          0xffffff);
 } else if (cmd->scan_begin_src == 130) {

  err |= ni_check_trigger_arg_roffs(CR_CHAN(cmd->scan_begin_arg),
        NI_AI_SampleClock,
        &devpriv->routing_tables, 1);
 } else {
  err |= comedi_check_trigger_arg_is(&cmd->scan_begin_arg, 0);
 }

 if (cmd->convert_src == TRIG_TIMER) {
  if (devpriv->is_611x || devpriv->is_6143) {
   err |= comedi_check_trigger_arg_is(&cmd->convert_arg,
          0);
  } else {
   err |= comedi_check_trigger_arg_min(&cmd->convert_arg,
           board->ai_speed);
   err |= comedi_check_trigger_arg_max(&cmd->convert_arg,
           devpriv->clock_ns *
           0xffff);
  }
 } else if (cmd->convert_src == 130) {

  err |= ni_check_trigger_arg_roffs(CR_CHAN(cmd->convert_arg),
        NI_AI_ConvertClock,
        &devpriv->routing_tables, 1);
 } else if (cmd->convert_src == 128) {
  err |= comedi_check_trigger_arg_is(&cmd->convert_arg, 0);
 }

 err |= comedi_check_trigger_arg_is(&cmd->scan_end_arg,
        cmd->chanlist_len);

 if (cmd->stop_src == TRIG_COUNT) {
  unsigned int max_count = 0x01000000;

  if (devpriv->is_611x)
   max_count -= num_adc_stages_611x;
  err |= comedi_check_trigger_arg_max(&cmd->stop_arg, max_count);
  err |= comedi_check_trigger_arg_min(&cmd->stop_arg, 1);
 } else {

  err |= comedi_check_trigger_arg_is(&cmd->stop_arg, 0);
 }

 if (err)
  return 3;



 if (cmd->scan_begin_src == TRIG_TIMER) {
  unsigned int tmp = cmd->scan_begin_arg;

  cmd->scan_begin_arg =
      ni_timer_to_ns(dev, ni_ns_to_timer(dev,
             cmd->scan_begin_arg,
             cmd->flags));
  if (tmp != cmd->scan_begin_arg)
   err++;
 }
 if (cmd->convert_src == TRIG_TIMER) {
  if (!devpriv->is_611x && !devpriv->is_6143) {
   unsigned int tmp = cmd->convert_arg;

   cmd->convert_arg =
       ni_timer_to_ns(dev, ni_ns_to_timer(dev,
              cmd->convert_arg,
              cmd->flags));
   if (tmp != cmd->convert_arg)
    err++;
   if (cmd->scan_begin_src == TRIG_TIMER &&
       cmd->scan_begin_arg <
       cmd->convert_arg * cmd->scan_end_arg) {
    cmd->scan_begin_arg =
        cmd->convert_arg * cmd->scan_end_arg;
    err++;
   }
  }
 }

 if (err)
  return 4;

 return 0;
}
