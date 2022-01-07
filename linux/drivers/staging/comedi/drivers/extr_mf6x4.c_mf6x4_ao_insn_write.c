
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mf6x4_private {int gpioc_reg; } ;
struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ mmio; struct mf6x4_private* private; } ;


 unsigned int CR_CHAN (int ) ;
 scalar_t__ MF6X4_DAC_REG (unsigned int) ;
 unsigned int MF6X4_GPIOC_DACEN ;
 unsigned int MF6X4_GPIOC_LDAC ;
 unsigned int ioread32 (int ) ;
 int iowrite16 (unsigned int,scalar_t__) ;
 int iowrite32 (unsigned int,int ) ;

__attribute__((used)) static int mf6x4_ao_insn_write(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 struct mf6x4_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int val = s->readback[chan];
 unsigned int gpioc;
 int i;


 gpioc = ioread32(devpriv->gpioc_reg);
 iowrite32((gpioc & ~MF6X4_GPIOC_LDAC) | MF6X4_GPIOC_DACEN,
    devpriv->gpioc_reg);

 for (i = 0; i < insn->n; i++) {
  val = data[i];
  iowrite16(val, dev->mmio + MF6X4_DAC_REG(chan));
 }
 s->readback[chan] = val;

 return insn->n;
}
