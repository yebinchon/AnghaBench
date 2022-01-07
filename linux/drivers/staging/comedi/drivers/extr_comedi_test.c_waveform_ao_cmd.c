
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct waveform_private {int ao_scan_period; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int class_dev; struct waveform_private* private; } ;
struct comedi_cmd {int flags; int scan_begin_arg; } ;
struct TYPE_2__ {int inttrig; struct comedi_cmd cmd; } ;


 int CMDF_PRIORITY ;
 int NSEC_PER_USEC ;
 int dev_err (int ,char*) ;
 int waveform_ao_inttrig_start ;

__attribute__((used)) static int waveform_ao_cmd(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 struct waveform_private *devpriv = dev->private;
 struct comedi_cmd *cmd = &s->async->cmd;

 if (cmd->flags & CMDF_PRIORITY) {
  dev_err(dev->class_dev,
   "commands at RT priority not supported in this driver\n");
  return -1;
 }

 devpriv->ao_scan_period = cmd->scan_begin_arg / NSEC_PER_USEC;
 s->async->inttrig = waveform_ao_inttrig_start;
 return 0;
}
