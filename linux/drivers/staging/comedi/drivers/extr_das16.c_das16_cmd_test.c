
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct das16_private_struct {scalar_t__ can_burst; } ;
struct das16_board {int ai_speed; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int pacer; struct das16_private_struct* private; struct das16_board* board_ptr; } ;
struct comedi_cmd {unsigned int start_src; unsigned int scan_begin_src; unsigned int convert_src; unsigned int scan_end_src; unsigned int stop_src; unsigned int start_arg; unsigned int scan_begin_arg; unsigned int scan_end_arg; unsigned int chanlist_len; unsigned int convert_arg; unsigned int stop_arg; scalar_t__ chanlist; int flags; } ;


 int EINVAL ;
 unsigned int TRIG_COUNT ;
 unsigned int TRIG_EXT ;
 unsigned int TRIG_FOLLOW ;
 unsigned int TRIG_NONE ;
 unsigned int TRIG_NOW ;
 unsigned int TRIG_TIMER ;
 int comedi_8254_cascade_ns_to_timer (int ,unsigned int*,int ) ;
 int comedi_check_trigger_arg_is (unsigned int*,unsigned int) ;
 int comedi_check_trigger_arg_min (unsigned int*,int) ;
 int comedi_check_trigger_is_unique (unsigned int) ;
 int comedi_check_trigger_src (unsigned int*,unsigned int) ;
 int das16_ai_check_chanlist (struct comedi_device*,struct comedi_subdevice*,struct comedi_cmd*) ;

__attribute__((used)) static int das16_cmd_test(struct comedi_device *dev, struct comedi_subdevice *s,
     struct comedi_cmd *cmd)
{
 const struct das16_board *board = dev->board_ptr;
 struct das16_private_struct *devpriv = dev->private;
 int err = 0;
 unsigned int trig_mask;
 unsigned int arg;



 err |= comedi_check_trigger_src(&cmd->start_src, TRIG_NOW);

 trig_mask = TRIG_FOLLOW;
 if (devpriv->can_burst)
  trig_mask |= TRIG_TIMER | TRIG_EXT;
 err |= comedi_check_trigger_src(&cmd->scan_begin_src, trig_mask);

 trig_mask = TRIG_TIMER | TRIG_EXT;
 if (devpriv->can_burst)
  trig_mask |= TRIG_NOW;
 err |= comedi_check_trigger_src(&cmd->convert_src, trig_mask);

 err |= comedi_check_trigger_src(&cmd->scan_end_src, TRIG_COUNT);
 err |= comedi_check_trigger_src(&cmd->stop_src, TRIG_COUNT | TRIG_NONE);

 if (err)
  return 1;



 err |= comedi_check_trigger_is_unique(cmd->scan_begin_src);
 err |= comedi_check_trigger_is_unique(cmd->convert_src);
 err |= comedi_check_trigger_is_unique(cmd->stop_src);




 if (cmd->scan_begin_src == TRIG_FOLLOW && cmd->convert_src == TRIG_NOW)
  err |= -EINVAL;
 if (cmd->scan_begin_src != TRIG_FOLLOW && cmd->convert_src != TRIG_NOW)
  err |= -EINVAL;

 if (err)
  return 2;



 err |= comedi_check_trigger_arg_is(&cmd->start_arg, 0);

 if (cmd->scan_begin_src == TRIG_FOLLOW)
  err |= comedi_check_trigger_arg_is(&cmd->scan_begin_arg, 0);

 err |= comedi_check_trigger_arg_is(&cmd->scan_end_arg,
        cmd->chanlist_len);


 if (cmd->scan_begin_src == TRIG_TIMER) {
  err |= comedi_check_trigger_arg_min(&cmd->scan_begin_arg,
          board->ai_speed *
          cmd->chanlist_len);
 }

 if (cmd->convert_src == TRIG_TIMER) {
  err |= comedi_check_trigger_arg_min(&cmd->convert_arg,
          board->ai_speed);
 }

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
  err |= das16_ai_check_chanlist(dev, s, cmd);

 if (err)
  return 5;

 return 0;
}
