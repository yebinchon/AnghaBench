
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; unsigned int start_arg; int chanlist_len; unsigned int scan_begin_arg; unsigned int convert_arg; unsigned int scan_end_arg; unsigned int stop_arg; int flags; } ;


 int CMDF_ROUND_DOWN ;
 int CMDF_ROUND_UP ;
 int EINVAL ;
 unsigned int RTD_MAX_SPEED ;
 unsigned int RTD_MAX_SPEED_1 ;
 int RTD_MIN_SPEED ;
 int RTD_MIN_SPEED_1 ;
 int TRIG_COUNT ;
 int TRIG_EXT ;
 int TRIG_NONE ;
 int TRIG_NOW ;
 int TRIG_TIMER ;
 int comedi_check_trigger_arg_is (unsigned int*,unsigned int) ;
 int comedi_check_trigger_arg_max (unsigned int*,int) ;
 int comedi_check_trigger_arg_min (unsigned int*,unsigned int) ;
 int comedi_check_trigger_is_unique (int) ;
 int comedi_check_trigger_src (int*,int) ;
 int rtd_ns_to_timer (unsigned int*,int ) ;

__attribute__((used)) static int rtd_ai_cmdtest(struct comedi_device *dev,
     struct comedi_subdevice *s, struct comedi_cmd *cmd)
{
 int err = 0;
 unsigned int arg;



 err |= comedi_check_trigger_src(&cmd->start_src, TRIG_NOW);
 err |= comedi_check_trigger_src(&cmd->scan_begin_src,
     TRIG_TIMER | TRIG_EXT);
 err |= comedi_check_trigger_src(&cmd->convert_src,
     TRIG_TIMER | TRIG_EXT);
 err |= comedi_check_trigger_src(&cmd->scan_end_src, TRIG_COUNT);
 err |= comedi_check_trigger_src(&cmd->stop_src, TRIG_COUNT | TRIG_NONE);

 if (err)
  return 1;



 err |= comedi_check_trigger_is_unique(cmd->scan_begin_src);
 err |= comedi_check_trigger_is_unique(cmd->convert_src);
 err |= comedi_check_trigger_is_unique(cmd->stop_src);



 if (err)
  return 2;



 err |= comedi_check_trigger_arg_is(&cmd->start_arg, 0);

 if (cmd->scan_begin_src == TRIG_TIMER) {

  if (cmd->chanlist_len == 1) {
   if (comedi_check_trigger_arg_min(&cmd->scan_begin_arg,
        RTD_MAX_SPEED_1)) {
    rtd_ns_to_timer(&cmd->scan_begin_arg,
      CMDF_ROUND_UP);
    err |= -EINVAL;
   }
   if (comedi_check_trigger_arg_max(&cmd->scan_begin_arg,
        RTD_MIN_SPEED_1)) {
    rtd_ns_to_timer(&cmd->scan_begin_arg,
      CMDF_ROUND_DOWN);
    err |= -EINVAL;
   }
  } else {
   if (comedi_check_trigger_arg_min(&cmd->scan_begin_arg,
        RTD_MAX_SPEED)) {
    rtd_ns_to_timer(&cmd->scan_begin_arg,
      CMDF_ROUND_UP);
    err |= -EINVAL;
   }
   if (comedi_check_trigger_arg_max(&cmd->scan_begin_arg,
        RTD_MIN_SPEED)) {
    rtd_ns_to_timer(&cmd->scan_begin_arg,
      CMDF_ROUND_DOWN);
    err |= -EINVAL;
   }
  }
 } else {



  err |= comedi_check_trigger_arg_max(&cmd->scan_begin_arg, 9);
 }

 if (cmd->convert_src == TRIG_TIMER) {
  if (cmd->chanlist_len == 1) {
   if (comedi_check_trigger_arg_min(&cmd->convert_arg,
        RTD_MAX_SPEED_1)) {
    rtd_ns_to_timer(&cmd->convert_arg,
      CMDF_ROUND_UP);
    err |= -EINVAL;
   }
   if (comedi_check_trigger_arg_max(&cmd->convert_arg,
        RTD_MIN_SPEED_1)) {
    rtd_ns_to_timer(&cmd->convert_arg,
      CMDF_ROUND_DOWN);
    err |= -EINVAL;
   }
  } else {
   if (comedi_check_trigger_arg_min(&cmd->convert_arg,
        RTD_MAX_SPEED)) {
    rtd_ns_to_timer(&cmd->convert_arg,
      CMDF_ROUND_UP);
    err |= -EINVAL;
   }
   if (comedi_check_trigger_arg_max(&cmd->convert_arg,
        RTD_MIN_SPEED)) {
    rtd_ns_to_timer(&cmd->convert_arg,
      CMDF_ROUND_DOWN);
    err |= -EINVAL;
   }
  }
 } else {


  err |= comedi_check_trigger_arg_max(&cmd->convert_arg, 9);
 }

 err |= comedi_check_trigger_arg_is(&cmd->scan_end_arg,
        cmd->chanlist_len);

 if (cmd->stop_src == TRIG_COUNT)
  err |= comedi_check_trigger_arg_min(&cmd->stop_arg, 1);
 else
  err |= comedi_check_trigger_arg_is(&cmd->stop_arg, 0);

 if (err)
  return 3;



 if (cmd->scan_begin_src == TRIG_TIMER) {
  arg = cmd->scan_begin_arg;
  rtd_ns_to_timer(&arg, cmd->flags);
  err |= comedi_check_trigger_arg_is(&cmd->scan_begin_arg, arg);
 }

 if (cmd->convert_src == TRIG_TIMER) {
  arg = cmd->convert_arg;
  rtd_ns_to_timer(&arg, cmd->flags);
  err |= comedi_check_trigger_arg_is(&cmd->convert_arg, arg);

  if (cmd->scan_begin_src == TRIG_TIMER) {
   arg = cmd->convert_arg * cmd->scan_end_arg;
   err |= comedi_check_trigger_arg_min(&cmd->
           scan_begin_arg,
           arg);
  }
 }

 if (err)
  return 4;

 return 0;
}
