
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct labpc_private {int stat1; int (* read_byte ) (struct comedi_device*,int ) ;} ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {struct labpc_private* private; } ;


 int EBUSY ;
 int STAT1_DAVAIL ;
 int STAT1_REG ;
 int stub1 (struct comedi_device*,int ) ;

__attribute__((used)) static int labpc_ai_eoc(struct comedi_device *dev,
   struct comedi_subdevice *s,
   struct comedi_insn *insn,
   unsigned long context)
{
 struct labpc_private *devpriv = dev->private;

 devpriv->stat1 = devpriv->read_byte(dev, STAT1_REG);
 if (devpriv->stat1 & STAT1_DAVAIL)
  return 0;
 return -EBUSY;
}
