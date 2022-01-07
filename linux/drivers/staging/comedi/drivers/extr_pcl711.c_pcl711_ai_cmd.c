
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; int pacer; } ;
struct comedi_cmd {scalar_t__ scan_begin_src; int * chanlist; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;


 int PCL711_INT_STAT_CLR ;
 scalar_t__ PCL711_INT_STAT_REG ;
 int PCL711_MODE_EXT_IRQ ;
 int PCL711_MODE_PACER_IRQ ;
 scalar_t__ TRIG_TIMER ;
 int comedi_8254_pacer_enable (int ,int,int,int) ;
 int comedi_8254_update_divisors (int ) ;
 int outb (int ,scalar_t__) ;
 int pcl711_ai_set_mode (struct comedi_device*,int ) ;
 int pcl711_set_changain (struct comedi_device*,struct comedi_subdevice*,int ) ;

__attribute__((used)) static int pcl711_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct comedi_cmd *cmd = &s->async->cmd;

 pcl711_set_changain(dev, s, cmd->chanlist[0]);

 if (cmd->scan_begin_src == TRIG_TIMER) {
  comedi_8254_update_divisors(dev->pacer);
  comedi_8254_pacer_enable(dev->pacer, 1, 2, 1);
  outb(PCL711_INT_STAT_CLR, dev->iobase + PCL711_INT_STAT_REG);
  pcl711_ai_set_mode(dev, PCL711_MODE_PACER_IRQ);
 } else {
  pcl711_ai_set_mode(dev, PCL711_MODE_EXT_IRQ);
 }

 return 0;
}
