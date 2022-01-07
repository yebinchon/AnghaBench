
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct das16m1_private {unsigned int intr_ctrl; int counter; int initial_hw_count; scalar_t__ adc_count; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {scalar_t__ iobase; int pacer; struct das16m1_private* private; } ;
struct comedi_cmd {scalar_t__ convert_src; scalar_t__ start_src; int chanlist_len; int chanlist; } ;
struct comedi_async {struct comedi_cmd cmd; } ;


 scalar_t__ DAS16M1_CLR_INTR_REG ;
 unsigned int DAS16M1_CS_EXT_TRIG ;
 scalar_t__ DAS16M1_CS_REG ;
 unsigned int DAS16M1_INTR_CTRL_INTE ;
 unsigned int DAS16M1_INTR_CTRL_PACER_EXT ;
 unsigned int DAS16M1_INTR_CTRL_PACER_INT ;
 unsigned int DAS16M1_INTR_CTRL_PACER_MASK ;
 scalar_t__ DAS16M1_INTR_CTRL_REG ;
 int I8254_BINARY ;
 int I8254_MODE2 ;
 scalar_t__ TRIG_EXT ;
 scalar_t__ TRIG_TIMER ;
 int comedi_8254_pacer_enable (int ,int,int,int) ;
 int comedi_8254_read (int ,int) ;
 int comedi_8254_set_mode (int ,int,int) ;
 int comedi_8254_update_divisors (int ) ;
 int comedi_8254_write (int ,int,int ) ;
 int das16m1_ai_set_queue (struct comedi_device*,int ,int ) ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static int das16m1_ai_cmd(struct comedi_device *dev,
     struct comedi_subdevice *s)
{
 struct das16m1_private *devpriv = dev->private;
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;
 unsigned int byte;


 devpriv->adc_count = 0;






 comedi_8254_set_mode(devpriv->counter, 1, I8254_MODE2 | I8254_BINARY);
 comedi_8254_write(devpriv->counter, 1, 0);





 devpriv->initial_hw_count = comedi_8254_read(devpriv->counter, 1);

 das16m1_ai_set_queue(dev, cmd->chanlist, cmd->chanlist_len);


 devpriv->intr_ctrl &= ~DAS16M1_INTR_CTRL_PACER_MASK;
 if (cmd->convert_src == TRIG_TIMER) {
  comedi_8254_update_divisors(dev->pacer);
  comedi_8254_pacer_enable(dev->pacer, 1, 2, 1);
  devpriv->intr_ctrl |= DAS16M1_INTR_CTRL_PACER_INT;
 } else {
  devpriv->intr_ctrl |= DAS16M1_INTR_CTRL_PACER_EXT;
 }


 byte = 0;




 if (cmd->start_src == TRIG_EXT && cmd->convert_src != TRIG_EXT)
  byte |= DAS16M1_CS_EXT_TRIG;

 outb(byte, dev->iobase + DAS16M1_CS_REG);


 outb(0, dev->iobase + DAS16M1_CLR_INTR_REG);

 devpriv->intr_ctrl |= DAS16M1_INTR_CTRL_INTE;
 outb(devpriv->intr_ctrl, dev->iobase + DAS16M1_INTR_CTRL_REG);

 return 0;
}
