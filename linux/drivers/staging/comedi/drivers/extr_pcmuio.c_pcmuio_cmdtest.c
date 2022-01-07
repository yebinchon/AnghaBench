
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; int stop_arg; int chanlist_len; int scan_end_arg; int convert_arg; int scan_begin_arg; int start_arg; } ;


 int TRIG_COUNT ;
 int TRIG_EXT ;
 int TRIG_INT ;
 int TRIG_NONE ;
 int TRIG_NOW ;
 int comedi_check_trigger_arg_is (int *,int ) ;
 int comedi_check_trigger_arg_min (int *,int) ;
 int comedi_check_trigger_is_unique (int) ;
 int comedi_check_trigger_src (int*,int) ;

__attribute__((used)) static int pcmuio_cmdtest(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_cmd *cmd)
{
 int err = 0;



 err |= comedi_check_trigger_src(&cmd->start_src, TRIG_NOW | TRIG_INT);
 err |= comedi_check_trigger_src(&cmd->scan_begin_src, TRIG_EXT);
 err |= comedi_check_trigger_src(&cmd->convert_src, TRIG_NOW);
 err |= comedi_check_trigger_src(&cmd->scan_end_src, TRIG_COUNT);
 err |= comedi_check_trigger_src(&cmd->stop_src, TRIG_COUNT | TRIG_NONE);

 if (err)
  return 1;



 err |= comedi_check_trigger_is_unique(cmd->start_src);
 err |= comedi_check_trigger_is_unique(cmd->stop_src);



 if (err)
  return 2;



 err |= comedi_check_trigger_arg_is(&cmd->start_arg, 0);
 err |= comedi_check_trigger_arg_is(&cmd->scan_begin_arg, 0);
 err |= comedi_check_trigger_arg_is(&cmd->convert_arg, 0);
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
