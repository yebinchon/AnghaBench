
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct waveform_private {TYPE_1__ ao_timer; int ao_scan_period; int ao_last_scan_time; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {struct waveform_private* private; } ;
struct comedi_cmd {unsigned int start_arg; } ;
struct comedi_async {int * inttrig; struct comedi_cmd cmd; } ;


 int EINVAL ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int ktime_get () ;
 int ktime_to_us (int ) ;
 scalar_t__ usecs_to_jiffies (int ) ;

__attribute__((used)) static int waveform_ao_inttrig_start(struct comedi_device *dev,
         struct comedi_subdevice *s,
         unsigned int trig_num)
{
 struct waveform_private *devpriv = dev->private;
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;

 if (trig_num != cmd->start_arg)
  return -EINVAL;

 async->inttrig = ((void*)0);

 devpriv->ao_last_scan_time = ktime_to_us(ktime_get());
 devpriv->ao_timer.expires =
  jiffies + usecs_to_jiffies(devpriv->ao_scan_period);
 add_timer(&devpriv->ao_timer);

 return 1;
}
