
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dt2811_private {unsigned int ai_divisor; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; struct dt2811_private* private; } ;
struct comedi_cmd {scalar_t__ start_src; scalar_t__ convert_src; int * chanlist; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;


 unsigned int DT2811_ADCSR_ADMODE (int) ;
 unsigned int DT2811_ADCSR_INTENB ;
 scalar_t__ DT2811_ADCSR_REG ;
 scalar_t__ DT2811_TMRCTR_REG ;
 scalar_t__ TRIG_NOW ;
 scalar_t__ TRIG_TIMER ;
 int dt2811_ai_set_chanspec (struct comedi_device*,int ) ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static int dt2811_ai_cmd(struct comedi_device *dev,
    struct comedi_subdevice *s)
{
 struct dt2811_private *devpriv = dev->private;
 struct comedi_cmd *cmd = &s->async->cmd;
 unsigned int mode;

 if (cmd->start_src == TRIG_NOW) {
  mode = DT2811_ADCSR_ADMODE(1);
 } else {
  if (cmd->convert_src == TRIG_TIMER) {
   mode = DT2811_ADCSR_ADMODE(2);
  } else {
   mode = DT2811_ADCSR_ADMODE(3);
  }
 }
 outb(mode | DT2811_ADCSR_INTENB, dev->iobase + DT2811_ADCSR_REG);


 outb(devpriv->ai_divisor, dev->iobase + DT2811_TMRCTR_REG);


 dt2811_ai_set_chanspec(dev, cmd->chanlist[0]);

 return 0;
}
