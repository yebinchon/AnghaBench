
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {struct cb_pcidas_private* private; } ;
struct cb_pcidas_private {scalar_t__ amcc; } ;


 scalar_t__ AMCC_OP_REG_MCSR_NVCMD ;
 scalar_t__ AMCC_OP_REG_MCSR_NVDATA ;
 unsigned int CR_CHAN (int ) ;
 unsigned int MCSR_NV_ENABLE ;
 unsigned int MCSR_NV_LOAD_HIGH_ADDR ;
 unsigned int MCSR_NV_LOAD_LOW_ADDR ;
 unsigned int MCSR_NV_READ ;
 int cb_pcidas_eeprom_ready ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 unsigned int inb (scalar_t__) ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static int cb_pcidas_eeprom_insn_read(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 struct cb_pcidas_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 int ret;
 int i;

 for (i = 0; i < insn->n; i++) {

  ret = comedi_timeout(dev, s, insn, cb_pcidas_eeprom_ready, 0);
  if (ret)
   return ret;


  outb(MCSR_NV_ENABLE | MCSR_NV_LOAD_LOW_ADDR,
       devpriv->amcc + AMCC_OP_REG_MCSR_NVCMD);
  outb(chan & 0xff, devpriv->amcc + AMCC_OP_REG_MCSR_NVDATA);
  outb(MCSR_NV_ENABLE | MCSR_NV_LOAD_HIGH_ADDR,
       devpriv->amcc + AMCC_OP_REG_MCSR_NVCMD);
  outb((chan >> 8) & 0xff,
       devpriv->amcc + AMCC_OP_REG_MCSR_NVDATA);
  outb(MCSR_NV_ENABLE | MCSR_NV_READ,
       devpriv->amcc + AMCC_OP_REG_MCSR_NVCMD);


  ret = comedi_timeout(dev, s, insn, cb_pcidas_eeprom_ready, 0);
  if (ret)
   return ret;

  data[i] = inb(devpriv->amcc + AMCC_OP_REG_MCSR_NVDATA);
 }

 return insn->n;
}
