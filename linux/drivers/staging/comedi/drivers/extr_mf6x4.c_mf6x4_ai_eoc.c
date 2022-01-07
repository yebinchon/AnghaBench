
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mf6x4_private {int gpioc_reg; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {struct mf6x4_private* private; } ;


 int EBUSY ;
 unsigned int MF6X4_GPIOC_EOLC ;
 unsigned int ioread32 (int ) ;

__attribute__((used)) static int mf6x4_ai_eoc(struct comedi_device *dev,
   struct comedi_subdevice *s,
   struct comedi_insn *insn,
   unsigned long context)
{
 struct mf6x4_private *devpriv = dev->private;
 unsigned int status;

 status = ioread32(devpriv->gpioc_reg);
 if (status & MF6X4_GPIOC_EOLC)
  return 0;
 return -EBUSY;
}
