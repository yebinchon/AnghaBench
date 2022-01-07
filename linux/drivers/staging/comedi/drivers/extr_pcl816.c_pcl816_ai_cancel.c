
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcl816_private {int ai_cmd_canceled; scalar_t__ ai_cmd_running; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int pacer; scalar_t__ iobase; struct pcl816_private* private; } ;


 scalar_t__ PCL816_CTRL_REG ;
 int comedi_8254_pacer_enable (int ,int,int,int) ;
 int outb (int ,scalar_t__) ;
 int pcl816_ai_clear_eoc (struct comedi_device*) ;

__attribute__((used)) static int pcl816_ai_cancel(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 struct pcl816_private *devpriv = dev->private;

 if (!devpriv->ai_cmd_running)
  return 0;

 outb(0, dev->iobase + PCL816_CTRL_REG);
 pcl816_ai_clear_eoc(dev);

 comedi_8254_pacer_enable(dev->pacer, 1, 2, 0);

 devpriv->ai_cmd_running = 0;
 devpriv->ai_cmd_canceled = 1;

 return 0;
}
