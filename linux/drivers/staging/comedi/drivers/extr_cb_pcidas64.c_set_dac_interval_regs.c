
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcidas64_private {scalar_t__ main_iobase; } ;
struct comedi_device {int class_dev; struct pcidas64_private* private; } ;
struct comedi_cmd {scalar_t__ scan_begin_src; int flags; int scan_begin_arg; } ;


 scalar_t__ DAC_SAMPLE_INTERVAL_LOWER_REG ;
 scalar_t__ DAC_SAMPLE_INTERVAL_UPPER_REG ;
 scalar_t__ TRIG_TIMER ;
 int dev_err (int ,char*) ;
 unsigned int get_ao_divisor (int ,int ) ;
 unsigned int max_counter_value ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static void set_dac_interval_regs(struct comedi_device *dev,
      const struct comedi_cmd *cmd)
{
 struct pcidas64_private *devpriv = dev->private;
 unsigned int divisor;

 if (cmd->scan_begin_src != TRIG_TIMER)
  return;

 divisor = get_ao_divisor(cmd->scan_begin_arg, cmd->flags);
 if (divisor > max_counter_value) {
  dev_err(dev->class_dev, "bug! ao divisor too big\n");
  divisor = max_counter_value;
 }
 writew(divisor & 0xffff,
        devpriv->main_iobase + DAC_SAMPLE_INTERVAL_LOWER_REG);
 writew((divisor >> 16) & 0xff,
        devpriv->main_iobase + DAC_SAMPLE_INTERVAL_UPPER_REG);
}
