
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbduxsigma_private {int high_speed; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct usbduxsigma_private* private; } ;
struct comedi_cmd {unsigned int chanlist_len; int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; int scan_begin_arg; int stop_arg; int scan_end_arg; int start_arg; } ;


 int TRIG_COUNT ;
 int TRIG_INT ;
 int TRIG_NONE ;
 int TRIG_NOW ;
 int TRIG_TIMER ;
 int comedi_check_trigger_arg_is (int *,unsigned int) ;
 int comedi_check_trigger_arg_min (int *,int) ;
 int comedi_check_trigger_is_unique (int) ;
 int comedi_check_trigger_src (int*,int) ;
 unsigned int rounddown (int ,int) ;
 int usbduxsigma_chans_to_interval (unsigned int) ;

__attribute__((used)) static int usbduxsigma_ai_cmdtest(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_cmd *cmd)
{
 struct usbduxsigma_private *devpriv = dev->private;
 int high_speed = devpriv->high_speed;
 int interval = usbduxsigma_chans_to_interval(cmd->chanlist_len);
 unsigned int tmp;
 int err = 0;



 err |= comedi_check_trigger_src(&cmd->start_src, TRIG_NOW | TRIG_INT);
 err |= comedi_check_trigger_src(&cmd->scan_begin_src, TRIG_TIMER);
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

 if (high_speed) {






  err |= comedi_check_trigger_arg_min(&cmd->scan_begin_arg,
          (125000 * interval));
 } else {


  err |= comedi_check_trigger_arg_min(&cmd->scan_begin_arg,
          1000000);
 }

 err |= comedi_check_trigger_arg_is(&cmd->scan_end_arg,
        cmd->chanlist_len);

 if (cmd->stop_src == TRIG_COUNT)
  err |= comedi_check_trigger_arg_min(&cmd->stop_arg, 1);
 else
  err |= comedi_check_trigger_arg_is(&cmd->stop_arg, 0);

 if (err)
  return 3;



 tmp = rounddown(cmd->scan_begin_arg, high_speed ? 125000 : 1000000);
 err |= comedi_check_trigger_arg_is(&cmd->scan_begin_arg, tmp);

 if (err)
  return 4;

 return 0;
}
