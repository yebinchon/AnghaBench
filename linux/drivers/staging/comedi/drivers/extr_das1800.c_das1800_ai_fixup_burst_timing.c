
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int pacer; } ;
struct comedi_cmd {unsigned int convert_arg; int flags; scalar_t__ scan_begin_src; unsigned int chanlist_len; unsigned int scan_begin_arg; } ;



 int CMDF_ROUND_MASK ;


 unsigned int DIV_ROUND_CLOSEST (unsigned int,int) ;
 unsigned int DIV_ROUND_UP (unsigned int,int) ;
 scalar_t__ TRIG_TIMER ;
 int comedi_8254_cascade_ns_to_timer (int ,unsigned int*,int) ;
 int comedi_check_trigger_arg_is (unsigned int*,unsigned int) ;
 int comedi_check_trigger_arg_max (unsigned int*,int) ;
 int comedi_check_trigger_arg_min (unsigned int*,unsigned int) ;

__attribute__((used)) static int das1800_ai_fixup_burst_timing(struct comedi_device *dev,
      struct comedi_cmd *cmd)
{
 unsigned int arg = cmd->convert_arg;
 int err = 0;
 err |= comedi_check_trigger_arg_max(&arg, 64000);


 switch (cmd->flags & CMDF_ROUND_MASK) {
 case 129:
 default:
  arg = DIV_ROUND_CLOSEST(arg, 1000);
  break;
 case 130:
  arg = arg / 1000;
  break;
 case 128:
  arg = DIV_ROUND_UP(arg, 1000);
  break;
 }
 err |= comedi_check_trigger_arg_is(&cmd->convert_arg, arg * 1000);






 if (cmd->scan_begin_src == TRIG_TIMER) {
  arg = cmd->convert_arg * cmd->chanlist_len;
  err |= comedi_check_trigger_arg_min(&cmd->scan_begin_arg, arg);

  arg = cmd->scan_begin_arg;
  comedi_8254_cascade_ns_to_timer(dev->pacer, &arg, cmd->flags);
  err |= comedi_check_trigger_arg_is(&cmd->scan_begin_arg, arg);
 }

 return err;
}
