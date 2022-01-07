
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int maxdata; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ mmio; } ;


 unsigned int CR_CHAN (int ) ;
 int MF6X4_ADCTRL_CHAN (unsigned int) ;
 scalar_t__ MF6X4_ADCTRL_REG ;
 scalar_t__ MF6X4_ADDATA_REG ;
 scalar_t__ MF6X4_ADSTART_REG ;
 unsigned int comedi_offset_munge (struct comedi_subdevice*,unsigned int) ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 unsigned int ioread16 (scalar_t__) ;
 int iowrite16 (int,scalar_t__) ;
 int mf6x4_ai_eoc ;

__attribute__((used)) static int mf6x4_ai_insn_read(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int d;
 int ret;
 int i;


 iowrite16(MF6X4_ADCTRL_CHAN(chan), dev->mmio + MF6X4_ADCTRL_REG);

 for (i = 0; i < insn->n; i++) {

  ioread16(dev->mmio + MF6X4_ADSTART_REG);

  ret = comedi_timeout(dev, s, insn, mf6x4_ai_eoc, 0);
  if (ret)
   return ret;


  d = ioread16(dev->mmio + MF6X4_ADDATA_REG);
  d &= s->maxdata;

  data[i] = comedi_offset_munge(s, d);
 }

 iowrite16(0x0, dev->mmio + MF6X4_ADCTRL_REG);

 return insn->n;
}
