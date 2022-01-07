
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {unsigned int start_src; unsigned int scan_begin_src; unsigned int convert_src; unsigned int scan_end_src; unsigned int stop_src; int stop_arg; int chanlist_len; int scan_end_arg; int convert_arg; int scan_begin_arg; int start_arg; } ;


 unsigned int TRIG_COUNT ;
 unsigned int TRIG_FOLLOW ;
 unsigned int TRIG_INT ;
 unsigned int TRIG_NONE ;
 unsigned int TRIG_NOW ;
 unsigned int TRIG_TIMER ;
 int comedi_check_trigger_arg_is (int *,int ) ;
 int comedi_check_trigger_arg_min (int *,int) ;
 int comedi_check_trigger_is_unique (unsigned int) ;
 int comedi_check_trigger_src (unsigned int*,unsigned int) ;

__attribute__((used)) static int usbdux_ao_cmdtest(struct comedi_device *dev,
        struct comedi_subdevice *s, struct comedi_cmd *cmd)
{
 int err = 0;
 unsigned int flags;



 err |= comedi_check_trigger_src(&cmd->start_src, TRIG_NOW | TRIG_INT);

 if (0) {

  flags = TRIG_FOLLOW;
 } else {

  flags = TRIG_TIMER;
 }
 err |= comedi_check_trigger_src(&cmd->scan_begin_src, flags);

 if (0) {




  flags = TRIG_TIMER;
 } else {




  flags = TRIG_NOW;
 }
 err |= comedi_check_trigger_src(&cmd->convert_src, flags);

 err |= comedi_check_trigger_src(&cmd->scan_end_src, TRIG_COUNT);
 err |= comedi_check_trigger_src(&cmd->stop_src, TRIG_COUNT | TRIG_NONE);

 if (err)
  return 1;



 err |= comedi_check_trigger_is_unique(cmd->start_src);
 err |= comedi_check_trigger_is_unique(cmd->stop_src);



 if (err)
  return 2;



 err |= comedi_check_trigger_arg_is(&cmd->start_arg, 0);

 if (cmd->scan_begin_src == TRIG_FOLLOW)
  err |= comedi_check_trigger_arg_is(&cmd->scan_begin_arg, 0);

 if (cmd->scan_begin_src == TRIG_TIMER) {
  err |= comedi_check_trigger_arg_min(&cmd->scan_begin_arg,
          1000000);
 }


 if (cmd->convert_src == TRIG_TIMER)
  err |= comedi_check_trigger_arg_min(&cmd->convert_arg, 125000);

 err |= comedi_check_trigger_arg_is(&cmd->scan_end_arg,
        cmd->chanlist_len);

 if (cmd->stop_src == TRIG_COUNT)
  err |= comedi_check_trigger_arg_min(&cmd->stop_arg, 1);
 else
  err |= comedi_check_trigger_arg_is(&cmd->stop_arg, 0);

 if (err)
  return 3;

 return 0;
}
