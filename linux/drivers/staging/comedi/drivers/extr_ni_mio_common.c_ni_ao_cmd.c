
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_private {int ao_needs_arming; int ao_mite_ring; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ irq; int class_dev; struct ni_private* private; } ;
struct comedi_cmd {int dummy; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;


 int EIO ;
 int dev_err (int ,char*) ;
 int ni_ao_cmd_personalize (struct comedi_device*,struct comedi_cmd const*) ;
 int ni_ao_cmd_set_channels (struct comedi_device*,struct comedi_subdevice*) ;
 int ni_ao_cmd_set_counters (struct comedi_device*,struct comedi_cmd const*) ;
 int ni_ao_cmd_set_fifo_mode (struct comedi_device*) ;
 int ni_ao_cmd_set_interrupts (struct comedi_device*,struct comedi_subdevice*) ;
 int ni_ao_cmd_set_stop_conditions (struct comedi_device*,struct comedi_cmd const*) ;
 int ni_ao_cmd_set_trigger (struct comedi_device*,struct comedi_cmd const*) ;
 int ni_ao_cmd_set_update (struct comedi_device*,struct comedi_cmd const*) ;
 int ni_cmd_set_mite_transfer (int ,struct comedi_subdevice*,struct comedi_cmd const*,int) ;

__attribute__((used)) static int ni_ao_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct ni_private *devpriv = dev->private;
 const struct comedi_cmd *cmd = &s->async->cmd;

 if (dev->irq == 0) {
  dev_err(dev->class_dev, "cannot run command without an irq");
  return -EIO;
 }


 ni_ao_cmd_personalize(dev, cmd);


 ni_ao_cmd_set_trigger(dev, cmd);
 ni_ao_cmd_set_counters(dev, cmd);
 ni_ao_cmd_set_update(dev, cmd);
 ni_ao_cmd_set_channels(dev, s);
 ni_ao_cmd_set_stop_conditions(dev, cmd);
 ni_ao_cmd_set_fifo_mode(dev);
 ni_cmd_set_mite_transfer(devpriv->ao_mite_ring, s, cmd, 0x00ffffff);
 ni_ao_cmd_set_interrupts(dev, s);
 devpriv->ao_needs_arming = 1;
 return 0;
}
