
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int pacer; struct cb_pcidas_board* board_ptr; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; unsigned int start_arg; unsigned int scan_begin_arg; int chanlist_len; unsigned int convert_arg; unsigned int scan_end_arg; unsigned int stop_arg; scalar_t__ chanlist; int flags; } ;
struct cb_pcidas_board {int ai_speed; int is_1602; } ;


 int CR_EDGE ;
 int CR_FLAGS_MASK ;
 int CR_INVERT ;
 int EINVAL ;
 int TRIG_COUNT ;

 int TRIG_FOLLOW ;
 int TRIG_NONE ;

 int TRIG_TIMER ;
 int cb_pcidas_ai_check_chanlist (struct comedi_device*,struct comedi_subdevice*,struct comedi_cmd*) ;
 int comedi_8254_cascade_ns_to_timer (int ,unsigned int*,int ) ;
 int comedi_check_trigger_arg_is (unsigned int*,unsigned int) ;
 int comedi_check_trigger_arg_min (unsigned int*,int) ;
 int comedi_check_trigger_is_unique (int) ;
 int comedi_check_trigger_src (int*,int) ;

__attribute__((used)) static int cb_pcidas_ai_cmdtest(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_cmd *cmd)
{
 const struct cb_pcidas_board *board = dev->board_ptr;
 int err = 0;
 unsigned int arg;



 err |= comedi_check_trigger_src(&cmd->start_src, 128 | 129);
 err |= comedi_check_trigger_src(&cmd->scan_begin_src,
     TRIG_FOLLOW | TRIG_TIMER | 129);
 err |= comedi_check_trigger_src(&cmd->convert_src,
     TRIG_TIMER | 128 | 129);
 err |= comedi_check_trigger_src(&cmd->scan_end_src, TRIG_COUNT);
 err |= comedi_check_trigger_src(&cmd->stop_src, TRIG_COUNT | TRIG_NONE);

 if (err)
  return 1;



 err |= comedi_check_trigger_is_unique(cmd->start_src);
 err |= comedi_check_trigger_is_unique(cmd->scan_begin_src);
 err |= comedi_check_trigger_is_unique(cmd->convert_src);
 err |= comedi_check_trigger_is_unique(cmd->stop_src);



 if (cmd->scan_begin_src == TRIG_FOLLOW && cmd->convert_src == 128)
  err |= -EINVAL;
 if (cmd->scan_begin_src != TRIG_FOLLOW && cmd->convert_src != 128)
  err |= -EINVAL;
 if (cmd->start_src == 129 &&
     (cmd->convert_src == 129 || cmd->scan_begin_src == 129))
  err |= -EINVAL;

 if (err)
  return 2;



 switch (cmd->start_src) {
 case 128:
  err |= comedi_check_trigger_arg_is(&cmd->start_arg, 0);
  break;
 case 129:

  if ((cmd->start_arg
       & (CR_FLAGS_MASK & ~(CR_EDGE | CR_INVERT))) != 0) {
   cmd->start_arg &= ~(CR_FLAGS_MASK &
      ~(CR_EDGE | CR_INVERT));
   err |= -EINVAL;
  }
  if (!board->is_1602 && (cmd->start_arg & CR_INVERT)) {
   cmd->start_arg &= (CR_FLAGS_MASK & ~CR_INVERT);
   err |= -EINVAL;
  }
  break;
 }

 if (cmd->scan_begin_src == TRIG_TIMER) {
  err |= comedi_check_trigger_arg_min(&cmd->scan_begin_arg,
          board->ai_speed *
          cmd->chanlist_len);
 }

 if (cmd->convert_src == TRIG_TIMER) {
  err |= comedi_check_trigger_arg_min(&cmd->convert_arg,
          board->ai_speed);
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
  comedi_8254_cascade_ns_to_timer(dev->pacer, &arg, cmd->flags);
  err |= comedi_check_trigger_arg_is(&cmd->scan_begin_arg, arg);
 }
 if (cmd->convert_src == TRIG_TIMER) {
  arg = cmd->convert_arg;
  comedi_8254_cascade_ns_to_timer(dev->pacer, &arg, cmd->flags);
  err |= comedi_check_trigger_arg_is(&cmd->convert_arg, arg);
 }

 if (err)
  return 4;


 if (cmd->chanlist && cmd->chanlist_len > 0)
  err |= cb_pcidas_ai_check_chanlist(dev, s, cmd);

 if (err)
  return 5;

 return 0;
}
