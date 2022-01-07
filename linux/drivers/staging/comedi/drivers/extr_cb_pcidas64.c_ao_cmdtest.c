
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcidas64_board {int ao_scan_speed; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct pcidas64_board* board_ptr; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; scalar_t__ scan_begin_arg; scalar_t__ chanlist_len; scalar_t__ chanlist; int flags; int scan_end_arg; int start_arg; } ;


 int EINVAL ;
 int TIMER_BASE ;
 int TRIG_COUNT ;
 int TRIG_EXT ;
 int TRIG_INT ;
 int TRIG_NONE ;
 int TRIG_NOW ;
 int TRIG_TIMER ;
 int cb_pcidas64_ao_check_chanlist (struct comedi_device*,struct comedi_subdevice*,struct comedi_cmd*) ;
 int comedi_check_trigger_arg_is (int *,scalar_t__) ;
 int comedi_check_trigger_arg_min (scalar_t__*,int) ;
 int comedi_check_trigger_is_unique (int) ;
 int comedi_check_trigger_src (int*,int) ;
 int get_ao_divisor (scalar_t__,int ) ;
 int get_divisor (int,int ) ;
 int max_counter_value ;

__attribute__((used)) static int ao_cmdtest(struct comedi_device *dev, struct comedi_subdevice *s,
        struct comedi_cmd *cmd)
{
 const struct pcidas64_board *board = dev->board_ptr;
 int err = 0;
 unsigned int tmp_arg;



 err |= comedi_check_trigger_src(&cmd->start_src, TRIG_INT | TRIG_EXT);
 err |= comedi_check_trigger_src(&cmd->scan_begin_src,
     TRIG_TIMER | TRIG_EXT);
 err |= comedi_check_trigger_src(&cmd->convert_src, TRIG_NOW);
 err |= comedi_check_trigger_src(&cmd->scan_end_src, TRIG_COUNT);
 err |= comedi_check_trigger_src(&cmd->stop_src, TRIG_NONE);

 if (err)
  return 1;



 err |= comedi_check_trigger_is_unique(cmd->start_src);
 err |= comedi_check_trigger_is_unique(cmd->scan_begin_src);



 if (cmd->convert_src == TRIG_EXT && cmd->scan_begin_src == TRIG_TIMER)
  err |= -EINVAL;
 if (cmd->stop_src != TRIG_COUNT &&
     cmd->stop_src != TRIG_NONE && cmd->stop_src != TRIG_EXT)
  err |= -EINVAL;

 if (err)
  return 2;



 err |= comedi_check_trigger_arg_is(&cmd->start_arg, 0);

 if (cmd->scan_begin_src == TRIG_TIMER) {
  err |= comedi_check_trigger_arg_min(&cmd->scan_begin_arg,
          board->ao_scan_speed);
  if (get_ao_divisor(cmd->scan_begin_arg, cmd->flags) >
      max_counter_value) {
   cmd->scan_begin_arg = (max_counter_value + 2) *
           TIMER_BASE;
   err |= -EINVAL;
  }
 }

 err |= comedi_check_trigger_arg_min(&cmd->chanlist_len, 1);
 err |= comedi_check_trigger_arg_is(&cmd->scan_end_arg,
        cmd->chanlist_len);

 if (err)
  return 3;



 if (cmd->scan_begin_src == TRIG_TIMER) {
  tmp_arg = cmd->scan_begin_arg;
  cmd->scan_begin_arg = get_divisor(cmd->scan_begin_arg,
        cmd->flags) * TIMER_BASE;
  if (tmp_arg != cmd->scan_begin_arg)
   err++;
 }

 if (err)
  return 4;


 if (cmd->chanlist && cmd->chanlist_len > 0)
  err |= cb_pcidas64_ao_check_chanlist(dev, s, cmd);

 if (err)
  return 5;

 return 0;
}
