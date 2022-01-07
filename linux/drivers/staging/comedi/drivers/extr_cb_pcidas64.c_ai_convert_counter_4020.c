
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_2__ {unsigned int divisor; } ;
struct pcidas64_private {TYPE_1__ ext_clock; } ;
struct comedi_device {int class_dev; struct pcidas64_private* private; } ;
struct comedi_cmd {int scan_begin_src; unsigned int scan_begin_arg; } ;


 unsigned int TIMER_BASE ;


 int dev_err (int ,char*) ;

__attribute__((used)) static u32 ai_convert_counter_4020(struct comedi_device *dev,
       struct comedi_cmd *cmd)
{
 struct pcidas64_private *devpriv = dev->private;
 unsigned int divisor;

 switch (cmd->scan_begin_src) {
 case 128:
  divisor = cmd->scan_begin_arg / TIMER_BASE;
  break;
 case 129:
  divisor = devpriv->ext_clock.divisor;
  break;
 default:
  dev_err(dev->class_dev, "bug! failed to set ai pacing!\n");
  divisor = 1000;
  break;
 }


 return divisor - 2;
}
