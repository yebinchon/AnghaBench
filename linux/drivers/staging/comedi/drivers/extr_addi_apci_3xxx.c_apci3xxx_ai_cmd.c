
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ mmio; struct apci3xxx_private* private; } ;
struct comedi_cmd {int * chanlist; } ;
struct apci3xxx_private {int ai_time_base; int ai_timer; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;


 int apci3xxx_ai_setup (struct comedi_device*,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int apci3xxx_ai_cmd(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 struct apci3xxx_private *devpriv = dev->private;
 struct comedi_cmd *cmd = &s->async->cmd;
 int ret;

 ret = apci3xxx_ai_setup(dev, cmd->chanlist[0]);
 if (ret)
  return ret;


 writel(devpriv->ai_time_base, dev->mmio + 36);


 writel(devpriv->ai_timer, dev->mmio + 32);


 writel(0x180000, dev->mmio + 8);

 return 0;
}
