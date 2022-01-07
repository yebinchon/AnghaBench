
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcidas64_board {scalar_t__ layout; int ai_speed; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct pcidas64_board* board_ptr; } ;
struct comedi_cmd {unsigned int start_src; unsigned int scan_begin_src; unsigned int convert_src; unsigned int scan_end_src; unsigned int stop_src; int start_arg; int convert_arg; int scan_begin_arg; int chanlist_len; int scan_end_arg; int stop_arg; scalar_t__ chanlist; } ;


 int EINVAL ;
 scalar_t__ LAYOUT_4020 ;


 unsigned int TRIG_FOLLOW ;


 unsigned int TRIG_OTHER ;
 unsigned int TRIG_TIMER ;
 int cb_pcidas64_ai_check_chanlist (struct comedi_device*,struct comedi_subdevice*,struct comedi_cmd*) ;
 int check_adc_timing (struct comedi_device*,struct comedi_cmd*) ;
 int comedi_check_trigger_arg_is (int*,int) ;
 int comedi_check_trigger_arg_min (int*,int) ;
 int comedi_check_trigger_is_unique (unsigned int) ;
 int comedi_check_trigger_src (unsigned int*,unsigned int) ;

__attribute__((used)) static int ai_cmdtest(struct comedi_device *dev, struct comedi_subdevice *s,
        struct comedi_cmd *cmd)
{
 const struct pcidas64_board *board = dev->board_ptr;
 int err = 0;
 unsigned int tmp_arg, tmp_arg2;
 unsigned int triggers;



 err |= comedi_check_trigger_src(&cmd->start_src, 128 | 130);

 triggers = TRIG_TIMER;
 if (board->layout == LAYOUT_4020)
  triggers |= TRIG_OTHER;
 else
  triggers |= TRIG_FOLLOW;
 err |= comedi_check_trigger_src(&cmd->scan_begin_src, triggers);

 triggers = TRIG_TIMER;
 if (board->layout == LAYOUT_4020)
  triggers |= 128;
 else
  triggers |= 130;
 err |= comedi_check_trigger_src(&cmd->convert_src, triggers);
 err |= comedi_check_trigger_src(&cmd->scan_end_src, 131);
 err |= comedi_check_trigger_src(&cmd->stop_src,
     131 | 130 | 129);

 if (err)
  return 1;



 err |= comedi_check_trigger_is_unique(cmd->start_src);
 err |= comedi_check_trigger_is_unique(cmd->scan_begin_src);
 err |= comedi_check_trigger_is_unique(cmd->convert_src);
 err |= comedi_check_trigger_is_unique(cmd->stop_src);



 if (cmd->convert_src == 130 && cmd->scan_begin_src == TRIG_TIMER)
  err |= -EINVAL;

 if (err)
  return 2;



 switch (cmd->start_src) {
 case 128:
  err |= comedi_check_trigger_arg_is(&cmd->start_arg, 0);
  break;
 case 130:




  break;
 }

 if (cmd->convert_src == TRIG_TIMER) {
  if (board->layout == LAYOUT_4020) {
   err |= comedi_check_trigger_arg_is(&cmd->convert_arg,
          0);
  } else {
   err |= comedi_check_trigger_arg_min(&cmd->convert_arg,
           board->ai_speed);




   if (cmd->scan_begin_src == TRIG_TIMER) {
    err |= comedi_check_trigger_arg_min(
      &cmd->scan_begin_arg,
      cmd->convert_arg *
      cmd->chanlist_len);
   }
  }
 }

 err |= comedi_check_trigger_arg_min(&cmd->chanlist_len, 1);
 err |= comedi_check_trigger_arg_is(&cmd->scan_end_arg,
        cmd->chanlist_len);

 switch (cmd->stop_src) {
 case 130:
  break;
 case 131:
  err |= comedi_check_trigger_arg_min(&cmd->stop_arg, 1);
  break;
 case 129:
  err |= comedi_check_trigger_arg_is(&cmd->stop_arg, 0);
  break;
 default:
  break;
 }

 if (err)
  return 3;



 if (cmd->convert_src == TRIG_TIMER) {
  tmp_arg = cmd->convert_arg;
  tmp_arg2 = cmd->scan_begin_arg;
  check_adc_timing(dev, cmd);
  if (tmp_arg != cmd->convert_arg)
   err++;
  if (tmp_arg2 != cmd->scan_begin_arg)
   err++;
 }

 if (err)
  return 4;


 if (cmd->chanlist && cmd->chanlist_len > 0)
  err |= cb_pcidas64_ai_check_chanlist(dev, s, cmd);

 if (err)
  return 5;

 return 0;
}
