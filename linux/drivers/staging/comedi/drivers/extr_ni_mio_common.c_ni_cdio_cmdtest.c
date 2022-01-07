
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_private {int routing_tables; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct ni_private* private; } ;
struct comedi_cmd {scalar_t__ chanlist_len; scalar_t__ chanlist; int stop_arg; int scan_end_arg; int convert_arg; int scan_begin_arg; int start_arg; int stop_src; int scan_end_src; int convert_src; int scan_begin_src; int start_src; } ;
struct TYPE_2__ {unsigned int prealloc_bufsz; } ;


 scalar_t__ CR_AREF (int ) ;
 int CR_CHAN (int ) ;
 scalar_t__ CR_RANGE (int ) ;
 int EINVAL ;
 int NI_DO_SampleClock ;
 int TRIG_COUNT ;
 int TRIG_EXT ;
 int TRIG_INT ;
 int TRIG_NONE ;
 int TRIG_NOW ;
 unsigned int comedi_bytes_per_scan_cmd (struct comedi_subdevice*,struct comedi_cmd*) ;
 int comedi_check_trigger_arg_is (int *,scalar_t__) ;
 int comedi_check_trigger_arg_max (int *,unsigned int) ;
 int comedi_check_trigger_src (int *,int ) ;
 int ni_cdio_check_chanlist (struct comedi_device*,struct comedi_subdevice*,struct comedi_cmd*) ;
 int ni_check_trigger_arg (int ,int ,int *) ;

__attribute__((used)) static int ni_cdio_cmdtest(struct comedi_device *dev,
      struct comedi_subdevice *s, struct comedi_cmd *cmd)
{
 struct ni_private *devpriv = dev->private;
 unsigned int bytes_per_scan;
 int err = 0;



 err |= comedi_check_trigger_src(&cmd->start_src, TRIG_INT);
 err |= comedi_check_trigger_src(&cmd->scan_begin_src, TRIG_EXT);
 err |= comedi_check_trigger_src(&cmd->convert_src, TRIG_NOW);
 err |= comedi_check_trigger_src(&cmd->scan_end_src, TRIG_COUNT);
 err |= comedi_check_trigger_src(&cmd->stop_src, TRIG_NONE);

 if (err)
  return 1;






 err |= comedi_check_trigger_arg_is(&cmd->start_arg, 0);





 err |= ni_check_trigger_arg(CR_CHAN(cmd->scan_begin_arg),
        NI_DO_SampleClock,
        &devpriv->routing_tables);
 if (CR_RANGE(cmd->scan_begin_arg) != 0 ||
     CR_AREF(cmd->scan_begin_arg) != 0)
  err |= -EINVAL;

 err |= comedi_check_trigger_arg_is(&cmd->convert_arg, 0);
 err |= comedi_check_trigger_arg_is(&cmd->scan_end_arg,
        cmd->chanlist_len);
 bytes_per_scan = comedi_bytes_per_scan_cmd(s, cmd);
 if (bytes_per_scan) {
  err |= comedi_check_trigger_arg_max(&cmd->stop_arg,
          s->async->prealloc_bufsz /
          bytes_per_scan);
 }

 if (err)
  return 3;





 if (cmd->chanlist && cmd->chanlist_len > 0)
  err |= ni_cdio_check_chanlist(dev, s, cmd);

 if (err)
  return 5;

 return 0;
}
