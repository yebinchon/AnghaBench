
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {struct addi_watchdog_private* private; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int class_dev; } ;
struct addi_watchdog_private {int wdog_ctrl; scalar_t__ iobase; } ;


 scalar_t__ ADDI_TCW_CTRL_REG ;
 int ADDI_TCW_CTRL_TRIG ;
 int EINVAL ;
 int dev_warn (int ,char*) ;
 int outl (int,scalar_t__) ;

__attribute__((used)) static int addi_watchdog_insn_write(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned int *data)
{
 struct addi_watchdog_private *spriv = s->private;
 int i;

 if (spriv->wdog_ctrl == 0) {
  dev_warn(dev->class_dev, "watchdog is disabled\n");
  return -EINVAL;
 }


 for (i = 0; i < insn->n; i++) {
  outl(spriv->wdog_ctrl | ADDI_TCW_CTRL_TRIG,
       spriv->iobase + ADDI_TCW_CTRL_REG);
 }

 return insn->n;
}
