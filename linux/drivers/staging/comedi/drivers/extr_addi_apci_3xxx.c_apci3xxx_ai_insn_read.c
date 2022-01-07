
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ mmio; } ;


 int apci3xxx_ai_eoc ;
 int apci3xxx_ai_setup (struct comedi_device*,int ) ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 unsigned int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int apci3xxx_ai_insn_read(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned int *data)
{
 int ret;
 int i;

 ret = apci3xxx_ai_setup(dev, insn->chanspec);
 if (ret)
  return ret;

 for (i = 0; i < insn->n; i++) {

  writel(0x80000, dev->mmio + 8);


  ret = comedi_timeout(dev, s, insn, apci3xxx_ai_eoc, 0);
  if (ret)
   return ret;


  data[i] = readl(dev->mmio + 28);
 }

 return insn->n;
}
