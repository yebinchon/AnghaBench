
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcidas64_private {scalar_t__ main_iobase; } ;
struct comedi_device {struct pcidas64_private* private; } ;
struct comedi_cmd {int stop_arg; } ;


 scalar_t__ ADC_COUNT_LOWER_REG ;
 scalar_t__ ADC_COUNT_UPPER_REG ;
 scalar_t__ use_hw_sample_counter (struct comedi_cmd*) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void setup_sample_counters(struct comedi_device *dev,
      struct comedi_cmd *cmd)
{
 struct pcidas64_private *devpriv = dev->private;


 if (use_hw_sample_counter(cmd)) {
  writew(cmd->stop_arg & 0xffff,
         devpriv->main_iobase + ADC_COUNT_LOWER_REG);
  writew((cmd->stop_arg >> 16) & 0xff,
         devpriv->main_iobase + ADC_COUNT_UPPER_REG);
 } else {
  writew(1, devpriv->main_iobase + ADC_COUNT_LOWER_REG);
 }
}
