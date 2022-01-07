
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; unsigned int start_arg; unsigned int convert_arg; unsigned int scan_begin_arg; unsigned int chanlist_len; unsigned int scan_end_arg; unsigned int stop_arg; } ;


 int DIV_ROUND_CLOSEST (unsigned int,int) ;
 int EINVAL ;
 scalar_t__ NSEC_PER_SEC ;
 int NSEC_PER_USEC ;
 int TRIG_COUNT ;
 int TRIG_FOLLOW ;
 int TRIG_NONE ;
 int TRIG_NOW ;
 int TRIG_TIMER ;
 unsigned int UINT_MAX ;
 int comedi_check_trigger_arg_is (unsigned int*,unsigned int) ;
 int comedi_check_trigger_arg_min (unsigned int*,int) ;
 int comedi_check_trigger_is_unique (int) ;
 int comedi_check_trigger_src (int*,int) ;
 unsigned int max (unsigned int,int) ;
 unsigned int min (unsigned int,unsigned int) ;
 unsigned int rounddown (unsigned int,unsigned int) ;

__attribute__((used)) static int waveform_ai_cmdtest(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_cmd *cmd)
{
 int err = 0;
 unsigned int arg, limit;



 err |= comedi_check_trigger_src(&cmd->start_src, TRIG_NOW);
 err |= comedi_check_trigger_src(&cmd->scan_begin_src,
     TRIG_FOLLOW | TRIG_TIMER);
 err |= comedi_check_trigger_src(&cmd->convert_src,
     TRIG_NOW | TRIG_TIMER);
 err |= comedi_check_trigger_src(&cmd->scan_end_src, TRIG_COUNT);
 err |= comedi_check_trigger_src(&cmd->stop_src, TRIG_COUNT | TRIG_NONE);

 if (err)
  return 1;



 err |= comedi_check_trigger_is_unique(cmd->convert_src);
 err |= comedi_check_trigger_is_unique(cmd->stop_src);



 if (cmd->scan_begin_src == TRIG_FOLLOW && cmd->convert_src == TRIG_NOW)
  err |= -EINVAL;

 if (err)
  return 2;



 err |= comedi_check_trigger_arg_is(&cmd->start_arg, 0);

 if (cmd->convert_src == TRIG_NOW) {
  err |= comedi_check_trigger_arg_is(&cmd->convert_arg, 0);
 } else {
  if (cmd->scan_begin_src == TRIG_FOLLOW) {
   err |= comedi_check_trigger_arg_min(&cmd->convert_arg,
           NSEC_PER_USEC);
  }
 }

 if (cmd->scan_begin_src == TRIG_FOLLOW) {
  err |= comedi_check_trigger_arg_is(&cmd->scan_begin_arg, 0);
 } else {
  err |= comedi_check_trigger_arg_min(&cmd->scan_begin_arg,
          NSEC_PER_USEC);
 }

 err |= comedi_check_trigger_arg_min(&cmd->chanlist_len, 1);
 err |= comedi_check_trigger_arg_is(&cmd->scan_end_arg,
        cmd->chanlist_len);

 if (cmd->stop_src == TRIG_COUNT)
  err |= comedi_check_trigger_arg_min(&cmd->stop_arg, 1);
 else
  err |= comedi_check_trigger_arg_is(&cmd->stop_arg, 0);

 if (err)
  return 3;



 if (cmd->convert_src == TRIG_TIMER) {

  arg = cmd->convert_arg;
  arg = min(arg,
     rounddown(UINT_MAX, (unsigned int)NSEC_PER_USEC));
  arg = NSEC_PER_USEC * DIV_ROUND_CLOSEST(arg, NSEC_PER_USEC);
  if (cmd->scan_begin_arg == TRIG_TIMER) {

   limit = UINT_MAX / cmd->scan_end_arg;
   limit = rounddown(limit, (unsigned int)NSEC_PER_SEC);
   arg = min(arg, limit);
  }
  err |= comedi_check_trigger_arg_is(&cmd->convert_arg, arg);
 }

 if (cmd->scan_begin_src == TRIG_TIMER) {

  arg = cmd->scan_begin_arg;
  arg = min(arg,
     rounddown(UINT_MAX, (unsigned int)NSEC_PER_USEC));
  arg = NSEC_PER_USEC * DIV_ROUND_CLOSEST(arg, NSEC_PER_USEC);
  if (cmd->convert_src == TRIG_TIMER) {

   arg = max(arg, cmd->convert_arg * cmd->scan_end_arg);
  }
  err |= comedi_check_trigger_arg_is(&cmd->scan_begin_arg, arg);
 }

 if (err)
  return 4;

 return 0;
}
