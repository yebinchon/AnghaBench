
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {scalar_t__ io_bits; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; int chanlist_len; scalar_t__ chanlist; int stop_arg; int scan_end_arg; int start_arg; } ;


 int EINVAL ;
 int TRIG_COUNT ;
 int TRIG_EXT ;
 int TRIG_NONE ;
 int TRIG_NOW ;
 int comedi_check_trigger_arg_is (int *,int) ;
 int comedi_check_trigger_arg_min (int *,int) ;
 int comedi_check_trigger_is_unique (int) ;
 int comedi_check_trigger_src (int*,int) ;
 int gsc_hpdi_check_chanlist (struct comedi_device*,struct comedi_subdevice*,struct comedi_cmd*) ;

__attribute__((used)) static int gsc_hpdi_cmd_test(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_cmd *cmd)
{
 int err = 0;

 if (s->io_bits)
  return -EINVAL;



 err |= comedi_check_trigger_src(&cmd->start_src, TRIG_NOW);
 err |= comedi_check_trigger_src(&cmd->scan_begin_src, TRIG_EXT);
 err |= comedi_check_trigger_src(&cmd->convert_src, TRIG_NOW);
 err |= comedi_check_trigger_src(&cmd->scan_end_src, TRIG_COUNT);
 err |= comedi_check_trigger_src(&cmd->stop_src, TRIG_COUNT | TRIG_NONE);

 if (err)
  return 1;



 err |= comedi_check_trigger_is_unique(cmd->stop_src);



 if (err)
  return 2;



 err |= comedi_check_trigger_arg_is(&cmd->start_arg, 0);

 if (!cmd->chanlist_len || !cmd->chanlist) {
  cmd->chanlist_len = 32;
  err |= -EINVAL;
 }
 err |= comedi_check_trigger_arg_is(&cmd->scan_end_arg,
        cmd->chanlist_len);

 if (cmd->stop_src == TRIG_COUNT)
  err |= comedi_check_trigger_arg_min(&cmd->stop_arg, 1);
 else
  err |= comedi_check_trigger_arg_is(&cmd->stop_arg, 0);

 if (err)
  return 3;





 if (cmd->chanlist && cmd->chanlist_len > 0)
  err |= gsc_hpdi_check_chanlist(dev, s, cmd);

 if (err)
  return 5;

 return 0;
}
