
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int maxdata; struct addi_watchdog_private* private; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int class_dev; } ;
struct addi_watchdog_private {unsigned int wdog_ctrl; scalar_t__ iobase; } ;


 unsigned int ADDI_TCW_CTRL_ENA ;
 scalar_t__ ADDI_TCW_CTRL_REG ;
 scalar_t__ ADDI_TCW_RELOAD_REG ;
 int EINVAL ;


 int dev_info (int ,char*,int) ;
 int outl (unsigned int,scalar_t__) ;

__attribute__((used)) static int addi_watchdog_insn_config(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 struct addi_watchdog_private *spriv = s->private;
 unsigned int reload;

 switch (data[0]) {
 case 129:
  spriv->wdog_ctrl = ADDI_TCW_CTRL_ENA;
  reload = data[1] & s->maxdata;
  outl(reload, spriv->iobase + ADDI_TCW_RELOAD_REG);


  dev_info(dev->class_dev, "watchdog enabled, timeout:%dms\n",
    20 * reload + 20);
  break;
 case 128:
  spriv->wdog_ctrl = 0;
  break;
 default:
  return -EINVAL;
 }

 outl(spriv->wdog_ctrl, spriv->iobase + ADDI_TCW_CTRL_REG);

 return insn->n;
}
