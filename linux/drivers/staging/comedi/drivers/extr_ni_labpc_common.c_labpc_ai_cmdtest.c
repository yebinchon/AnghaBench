
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct labpc_boardinfo {int ai_speed; scalar_t__ is_labpc1200; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct labpc_boardinfo* board_ptr; } ;
struct comedi_cmd {unsigned int start_src; unsigned int scan_begin_src; unsigned int convert_src; unsigned int scan_end_src; unsigned int stop_src; int start_arg; int chanlist_len; int scan_end_arg; int convert_arg; int scan_begin_arg; int stop_arg; scalar_t__ chanlist; } ;
typedef enum scan_mode { ____Placeholder_scan_mode } scan_mode ;


 int EINVAL ;


 unsigned int TRIG_FOLLOW ;


 unsigned int TRIG_TIMER ;
 int comedi_check_trigger_arg_is (int*,int) ;
 int comedi_check_trigger_arg_min (int*,int) ;
 int comedi_check_trigger_is_unique (unsigned int) ;
 int comedi_check_trigger_src (unsigned int*,unsigned int) ;
 int labpc_adc_timing (struct comedi_device*,struct comedi_cmd*,int) ;
 int labpc_ai_check_chanlist (struct comedi_device*,struct comedi_subdevice*,struct comedi_cmd*) ;
 int labpc_ai_scan_mode (struct comedi_cmd*) ;

__attribute__((used)) static int labpc_ai_cmdtest(struct comedi_device *dev,
       struct comedi_subdevice *s, struct comedi_cmd *cmd)
{
 const struct labpc_boardinfo *board = dev->board_ptr;
 int err = 0;
 int tmp, tmp2;
 unsigned int stop_mask;
 enum scan_mode mode;



 err |= comedi_check_trigger_src(&cmd->start_src, 128 | 130);
 err |= comedi_check_trigger_src(&cmd->scan_begin_src,
     TRIG_TIMER | TRIG_FOLLOW | 130);
 err |= comedi_check_trigger_src(&cmd->convert_src,
     TRIG_TIMER | 130);
 err |= comedi_check_trigger_src(&cmd->scan_end_src, 131);

 stop_mask = 131 | 129;
 if (board->is_labpc1200)
  stop_mask |= 130;
 err |= comedi_check_trigger_src(&cmd->stop_src, stop_mask);

 if (err)
  return 1;



 err |= comedi_check_trigger_is_unique(cmd->start_src);
 err |= comedi_check_trigger_is_unique(cmd->scan_begin_src);
 err |= comedi_check_trigger_is_unique(cmd->convert_src);
 err |= comedi_check_trigger_is_unique(cmd->stop_src);




 if (cmd->start_src == 130 && cmd->stop_src == 130)
  err++;

 if (err)
  return 2;



 switch (cmd->start_src) {
 case 128:
  err |= comedi_check_trigger_arg_is(&cmd->start_arg, 0);
  break;
 case 130:

  break;
 }

 if (!cmd->chanlist_len)
  err |= -EINVAL;
 err |= comedi_check_trigger_arg_is(&cmd->scan_end_arg,
        cmd->chanlist_len);

 if (cmd->convert_src == TRIG_TIMER) {
  err |= comedi_check_trigger_arg_min(&cmd->convert_arg,
          board->ai_speed);
 }


 if (cmd->scan_begin_src == TRIG_TIMER) {
  if (cmd->convert_src == TRIG_TIMER) {
   err |= comedi_check_trigger_arg_min(&cmd->
           scan_begin_arg,
           cmd->convert_arg *
           cmd->chanlist_len);
  }
  err |= comedi_check_trigger_arg_min(&cmd->scan_begin_arg,
          board->ai_speed *
          cmd->chanlist_len);
 }

 switch (cmd->stop_src) {
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



 tmp = cmd->convert_arg;
 tmp2 = cmd->scan_begin_arg;
 mode = labpc_ai_scan_mode(cmd);
 labpc_adc_timing(dev, cmd, mode);
 if (tmp != cmd->convert_arg || tmp2 != cmd->scan_begin_arg)
  err++;

 if (err)
  return 4;


 if (cmd->chanlist && cmd->chanlist_len > 0)
  err |= labpc_ai_check_chanlist(dev, s, cmd);

 if (err)
  return 5;

 return 0;
}
