
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; int start_arg; int chanlist_len; int scan_end_arg; int convert_arg; unsigned int stop_arg; scalar_t__ chanlist; } ;


 int EINVAL ;
 int MAX_SAMPLING_PERIOD ;
 int MIN_SAMPLING_PERIOD ;
 int TRIG_COUNT ;
 int TRIG_EXT ;
 int TRIG_FOLLOW ;
 int TRIG_INT ;
 int TRIG_NONE ;
 int TRIG_NOW ;
 int TRIG_TIMER ;
 int comedi_check_trigger_arg_is (int*,unsigned int) ;
 int comedi_check_trigger_arg_max (unsigned int*,int ) ;
 int comedi_check_trigger_arg_min (unsigned int*,int) ;
 int comedi_check_trigger_is_unique (int) ;
 int comedi_check_trigger_src (int*,int) ;
 int usbduxfast_ai_check_chanlist (struct comedi_device*,struct comedi_subdevice*,struct comedi_cmd*) ;

__attribute__((used)) static int usbduxfast_ai_cmdtest(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_cmd *cmd)
{
 int err = 0;
 unsigned int steps;
 unsigned int arg;



 err |= comedi_check_trigger_src(&cmd->start_src,
     TRIG_NOW | TRIG_EXT | TRIG_INT);
 err |= comedi_check_trigger_src(&cmd->scan_begin_src, TRIG_FOLLOW);
 err |= comedi_check_trigger_src(&cmd->convert_src, TRIG_TIMER);
 err |= comedi_check_trigger_src(&cmd->scan_end_src, TRIG_COUNT);
 err |= comedi_check_trigger_src(&cmd->stop_src, TRIG_COUNT | TRIG_NONE);

 if (err)
  return 1;



 err |= comedi_check_trigger_is_unique(cmd->start_src);
 err |= comedi_check_trigger_is_unique(cmd->stop_src);



 if (err)
  return 2;



 err |= comedi_check_trigger_arg_is(&cmd->start_arg, 0);

 if (!cmd->chanlist_len)
  err |= -EINVAL;


 if (cmd->start_src == TRIG_EXT &&
     cmd->chanlist_len != 1 && cmd->chanlist_len != 16)
  err |= -EINVAL;

 err |= comedi_check_trigger_arg_is(&cmd->scan_end_arg,
        cmd->chanlist_len);
 steps = (cmd->convert_arg * 30) / 1000;
 if (cmd->chanlist_len != 1)
  err |= comedi_check_trigger_arg_min(&steps,
          MIN_SAMPLING_PERIOD);
 err |= comedi_check_trigger_arg_max(&steps, MAX_SAMPLING_PERIOD);
 arg = (steps * 1000) / 30;
 err |= comedi_check_trigger_arg_is(&cmd->convert_arg, arg);

 if (cmd->stop_src == TRIG_COUNT)
  err |= comedi_check_trigger_arg_min(&cmd->stop_arg, 1);
 else
  err |= comedi_check_trigger_arg_is(&cmd->stop_arg, 0);

 if (err)
  return 3;




 if (cmd->chanlist && cmd->chanlist_len > 0)
  err |= usbduxfast_ai_check_chanlist(dev, s, cmd);
 if (err)
  return 5;

 return 0;
}
