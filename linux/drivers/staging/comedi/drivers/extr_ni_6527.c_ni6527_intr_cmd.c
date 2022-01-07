
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ mmio; } ;


 int NI6527_CLR_IRQS ;
 scalar_t__ NI6527_CLR_REG ;
 int NI6527_CTRL_ENABLE_IRQS ;
 scalar_t__ NI6527_CTRL_REG ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static int ni6527_intr_cmd(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 writeb(NI6527_CLR_IRQS, dev->mmio + NI6527_CLR_REG);
 writeb(NI6527_CTRL_ENABLE_IRQS, dev->mmio + NI6527_CTRL_REG);

 return 0;
}
